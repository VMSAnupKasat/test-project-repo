# Input bindings are passed in via param block.
param($Timer)

################################################################################
Select-AzSubscription -Subscription $env:SUBSCRIPTION_ID -Tenant $env:TENANT_ID

# Connect-AzAccount -Identity
$resourceGroup = $env:RESOURCE_GROUP_NAME
$storageAccountName = $env:STORAGE_ACCOUNT_NAME
$storageAccount = Get-AzStorageAccount -Name $storageAccountName -ResourceGroupName $resourceGroup
$ctx = $storageAccount.Context

$orgUrl = "https://dev.azure.com/$($env:ADO_ORGANIZATION)"
$adoToken = Get-AzKeyVaultSecret -VaultName $env:KEYVAULT_NAME -Name $env:ADO_TOKEN_SECRET_NAME -AsPlainText
$queryString = "api-version=6.0"

# Create header with PAT
$token = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes(":$($adoToken)"))
$header = @{authorization = "Basic $token" }

# Get the list of all projects in the organization
Write-Host "Loading projects"
$projectsPartitionKey = "AllProjects"
New-AzStorageTable -Name $projectsPartitionKey -Context $ctx -ErrorAction SilentlyContinue | Out-Null
$projectsTable = (Get-AzStorageTable –Name $projectsPartitionKey –Context $ctx).CloudTable
$projectsUrl = "$orgUrl/_apis/projects?$queryString"
try {
    $projects = Invoke-RestMethod -Uri $projectsUrl -Method Get -ContentType "application/json" -Headers $header
    $projects.value | ForEach-Object {
        $description = $_.description
        if ([String]::IsNullOrEmpty($_.description)) {
            $description = ""
        }
        $project = @{
            id             = $_.id
            name           = $_.name
            description    = $description
            url            = $_.url
            state          = $_.state
            revision       = $_.revision
            visibility     = $_.visibility
            lastUpdateTime = $_.lastUpdateTime
        }
        Add-AzTableRow -table $projectsTable -partitionKey $projectsPartitionKey -rowKey $_.id -property $project -UpdateExisting | Out-Null
    }
    Write-Host "$($projects.value.count) Projects loaded successfully"
}
catch {
    Write-Host "Message: [$($_.Exception.Message)"]
    return
}
$projectNames = $projects.value.name

# Get the list of all repositories in the each project from the organization
Write-Host "Loading repositories"
$repositoriesPartitionKey = "AllRepositories"
New-AzStorageTable -Name $repositoriesPartitionKey -Context $ctx -ErrorAction SilentlyContinue | Out-Null
$repositoriesTable = (Get-AzStorageTable –Name $repositoriesPartitionKey –Context $ctx).CloudTable
$allRepositories = @()
try {
    $projectNames | ForEach-Object {
        $repositoriesUrl = "$orgUrl/$_/_apis/git/repositories?$queryString"
        $repositories = Invoke-RestMethod -Uri $repositoriesUrl -Method Get -ContentType "application/json" -Headers $header
        $repositories.value | ForEach-Object {
            $repository = @{
                id          = $_.id
                name        = $_.name
                url         = $_.url
                projectId   = $_.project.id
                projectName = $_.project.name
                visibility  = $_.project.visibility
                isDisabled  = $_.isDisabled
            }
            $allRepositories += New-Object PSObject -Property $repository
            Add-AzTableRow -table $repositoriesTable -partitionKey $repositoriesPartitionKey -rowKey $_.id -property $repository -UpdateExisting | Out-Null
        }
    }
    Write-Host "$($allRepositories.value.count) Repositories loaded successfully"
}
catch {
    Write-Host "Message: [$($_.Exception.Message)"]
    return
}

# Get the list of all branches in all repositories in the each project from the organization
Write-Host "Loading branches"
$branchesPartitionKey = "AllBranches"
New-AzStorageTable -Name $branchesPartitionKey -Context $ctx -ErrorAction SilentlyContinue | Out-Null
$branchesTable = (Get-AzStorageTable –Name $branchesPartitionKey –Context $ctx).CloudTable
$allBranchesCount = @()
try {
    $allRepositories | ForEach-Object {
        if (!$_.isDisabled) {
            $branchesUrl = "$orgUrl/$($_.projectName)/_apis/git/repositories/$($_.id)/refs?$queryString"
            $projectName = $_.projectName
            $repositoryId = $_.id
            $branches = Invoke-RestMethod -Uri $branchesUrl -Method Get -ContentType "application/json" -Headers $header
            $allbranches = $branches
            $continuationToken = $branches.value.'x-ms-continuationtoken'
            while ($continuationToken -ne $null) {
                Write-Host "Loading next set of branches..."
                $Uri = "$orgUrl/$($_.projectName)/_apis/git/repositories/$($_.id)/refs?continuationToken=$continuationToken&$queryString" 
                $branches = Invoke-WebRequest -Uri $Uri -Method Get -ContentType "application/json" -Headers $header
                $continuationToken = $branches.Headers.'x-ms-continuationtoken'
                $allbranches += $branches
            }
            $allBranchesCount += $allbranches.value
            $allbranches.value | ForEach-Object {
                $branch = @{
                    projectName        = $projectName
                    repositoryId       = $repositoryId
                    name               = ($_.name).Replace('refs/heads/', '')
                    creatorDisplayName = $_.creator.displayName
                    creatorUniqueName  = $_.creator.uniqueName
                    url                = $_.url
                    id                 = $_.objectId
                }
                Add-AzTableRow -table $branchesTable -partitionKey $branchesPartitionKey -rowKey $_.objectId -property $branch -UpdateExisting | Out-Null
            }
        }
    }
    Write-Host "$($allBranchesCount.count) Branches loaded successfully"
}
catch {
    Write-Host "Message: [$($_.Exception.Message)"]
    return
}

# Get the list of all pull requests in all repositories in the each project from the organization
Write-Host "Loading pull requests"
$pullRequestsPartitionKey = "AllPullRequests"
$prDate = (Get-Date).AddMonths(-1)
New-AzStorageTable -Name $pullRequestsPartitionKey -Context $ctx -ErrorAction SilentlyContinue | Out-Null
$pullRequestsTable = (Get-AzStorageTable –Name $pullRequestsPartitionKey –Context $ctx).CloudTable
$allPullRequests = @()
try {
    $allRepositories | ForEach-Object {
        if (!$_.isDisabled) {
            $pullRequestsUrl = "$orgUrl/$($_.projectName)/_apis/git/repositories/$($_.id)/pullrequests?searchCriteria.status=completed&searchCriteria.status=active&$queryString"
            $pullRequests = Invoke-RestMethod -Uri $pullRequestsUrl -Method Get -ContentType "application/json" -Headers $header
            $filteredPullRequests = ($pullRequests.value | Where-Object { ($_.creationDate -gt $prDate) -and ($_.createdBy.uniqueName -match "@microsoft.com") })
            $filteredPullRequests | ForEach-Object {
                $pullRequest = @{
                    pullRequestId           = $_.pullRequestId
                    title                   = $_.title
                    projectId               = $_.repository.project.id
                    projectName             = $_.repository.project.name
                    repositoryId            = $_.repository.id
                    repositoryName          = $_.repository.name
                    status                  = $_.status
                    createdByEmail          = $_.createdBy.uniqueName
                    createdByName           = $_.createdBy.displayName
                    mergeStatus             = $_.mergeStatus
                    mergeId                 = $_.mergeId
                    creationDate            = $_.creationDate
                    sourceRefName           = $_.sourceRefName
                    targetRefName           = $_.targetRefName
                    lastMergeSourceCommitId = $_.lastMergeSourceCommit.commitId
                    lastMergeTargetCommitId = $_.lastMergeTargetCommit.commitId
                }
                Add-AzTableRow -table $pullRequestsTable -partitionKey $pullRequestsPartitionKey -rowKey $_.pullRequestId -property $pullRequest -UpdateExisting | Out-Null
            }
            $allPullRequests += $filteredPullRequests
        }
    }
    Write-Host "$($allPullRequests.count) Pull requests loaded successfully"
}
catch {
    Write-Host "Message: [$($_.Exception.Message)"]
    return
}

# Get the list of all commits by pull request in all repositories in the each project from the organization
Write-Host "Loading commits by pull request"
$allCommitsObject = @()
try {
    $allPullRequests | ForEach-Object {
        $pullRequestId = $_.pullRequestId
        $repositoryId = $_.repository.id
        $commitsUrl = "$orgUrl/$($_.projectName)/_apis/git/repositories/$repositoryId/pullRequests/$pullRequestId/commits?$queryString"
        $commits = Invoke-RestMethod -Uri $commitsUrl -Method Get -ContentType "application/json" -Headers $header
        $allcommits = $commits
        $continuationToken = $commits.value.'x-ms-continuationtoken'
        while ($continuationToken -ne $null) {
            Write-Host "Loading next set of commits..."
            $Uri = "$orgUrl/$($_.projectName)/_apis/git/repositories/$repositoryId/pullRequests/$pullRequestId/commits?continuationToken=$continuationToken&$queryString" 
            $commits = Invoke-WebRequest -Uri $Uri -Method Get -ContentType "application/json" -Headers $header
            $continuationToken = $commits.Headers.'x-ms-continuationtoken'
            $allcommits += $commits
        }
        $allcommits.value | ForEach-Object {
            $commit = @{ 
                repositoryId = $repositoryId
                id           = $_.commitId
            }
            $allCommitsObject += $commit
        }
    }
    Write-Host "$($allCommitsObject.count) commits loaded successfully"
}
catch {
    Write-Host "Message: [$($_.Exception.Message)"]
    return
}

# Get the stats of all commits by pull request in all repositories
Write-Host "Loading commits stats"
$commitsStatsPartitionKey = "allCommitsStats"
New-AzStorageTable -Name $commitsStatsPartitionKey -Context $ctx -ErrorAction SilentlyContinue | Out-Null
$commitsStatsTable = (Get-AzStorageTable –Name $commitsStatsPartitionKey –Context $ctx).CloudTable
$allCommitsStatsCount = @()
try {
    $allCommitsObject | ForEach-Object {
        $commitsStatsUrl = "$orgUrl/_apis/git/repositories/$($_.repositoryId)/commits?searchCriteria.fromCommitId=$($_.id)&searchCriteria.toCommitId=$($_.id)&$previewQueryString"
        $commitsStats = Invoke-RestMethod -Uri $commitsStatsUrl -Method Get -ContentType "application/json" -Headers $header
        $allCommitsStats = $commitsStats
        $allCommitsStatsCount += $allCommitsStats.value
        $allCommitsStats.value | ForEach-Object {
            $commitStat = @{ 
                id             = $_.commitId
                addded         = if ([string]::IsNullOrEmpty($_.changeCounts.Add)) { "" }else { $_.changeCounts.Add }
                edited         = if ([string]::IsNullOrEmpty($_.changeCounts.Edit)) { "" }else { $_.changeCounts.Edit }
                deleted        = if ([string]::IsNullOrEmpty($_.changeCounts.Delete)) { "" }else { $_.changeCounts.Delete }
                comment        = if ([string]::IsNullOrEmpty($_.comment)) { "" }else { $_.comment }
                committerEmail = if ([string]::IsNullOrEmpty($_.committer.email)) { "" }else { $_.committer.email }
                committerDate  = if ([string]::IsNullOrEmpty($_.committer.date)) { "" }else { $_.committer.date }
            }
            Add-AzTableRow -table $commitsStatsTable -partitionKey $commitsStatsPartitionKey -rowKey $_.commitId -property $commitStat -UpdateExisting | Out-Null
        }
    }
    Write-Host "$($allCommitsStatsCount.count) commits stats loaded successfully"
}
catch {
    Write-Host "Message: [$($_.Exception.Message)"]
    return
}

# Get the list of all pipelines in the each project from the organization
Write-Host "Loading pipelines"
$pipelinesQueryString = "api-version=6.1-preview.1"
$allPipelinesObject = @()
try {
    $projectNames | ForEach-Object {
        $projectName = $_
        $pipelinesUrl = "$orgUrl/$_/_apis/pipelines?$pipelinesQueryString"
        $pipelines = Invoke-RestMethod -Uri $pipelinesUrl -Method Get -ContentType "application/json" -Headers $header
        $allpipelines = $pipelines
        $continuationToken = $pipelines.value.'x-ms-continuationtoken'
        while ($continuationToken -ne $null) {
            Write-Host "Loading next set of pipelines..."
            $Uri = "$orgUrl/$_/_apis/pipelines?continuationToken=$continuationToken&$pipelinesQueryString" 
            $pipelines = Invoke-WebRequest -Uri $Uri -Method Get -ContentType "application/json" -Headers $header
            $continuationToken = $pipelines.Headers.'x-ms-continuationtoken'
            $allpipelines += $pipelines
        }
        $allpipelines.value | ForEach-Object {
            $pipeline = @{
                projectName = $projectName
                id          = $_.id
                name        = $_.name
            }
            $allPipelinesObject += $pipeline 
        }
    }
    Write-Host "$($allPipelinesObject.Count) pipelines loaded successfully"
}
catch {
    Write-Host "Message: [$($_.Exception.Message)"]
    return
}

# Get the pipeline runs of all pipelineRuns in the organization
Write-Host "Loading pipeline runs"
$runsDate = (Get-Date).AddDays(-14)
$pipelinesPartitionKey = "AllPipelineRuns"
New-AzStorageTable -Name $pipelinesPartitionKey -Context $ctx -ErrorAction SilentlyContinue | Out-Null
$pipelinesTable = (Get-AzStorageTable –Name $pipelinesPartitionKey –Context $ctx).CloudTable
$allPipelineRuns = @()
try {
    $allPipelinesObject | ForEach-Object {
        $projectName = $_.projectName
        $pipelineRunsUrl = "$orgUrl/$projectName/_apis/pipelines/$($_.id)/runs?$pipelinesQueryString"
        $pipelineRuns = Invoke-RestMethod -Uri $pipelineRunsUrl -Method Get -ContentType "application/json" -Headers $header
        $filteredPipelineRuns = ($pipelineRuns.value | Where-Object { $_.createdDate -gt $runsDate })
        $filteredPipelineRuns | ForEach-Object {
            $pipelineRun = @{
                id           = $_.id
                name         = $_.name
                createdDate  = $_.createdDate
                finishedDate = if ([String]::IsNullOrEmpty($_.finishedDate)) { "" } else { $_.finishedDate }
                state        = $_.state
                result       = if ([String]::IsNullOrEmpty($_.result)) { "" } else { $_.result }
                pipelineId   = $_.pipeline.id
                pipelineName = $_.pipeline.name
                projectName  = $projectName
            }
            Add-AzTableRow -table $pipelinesTable -partitionKey $pipelinesPartitionKey -rowKey $_.id -property $pipelineRun -UpdateExisting | Out-Null
        }
        $allPipelineRuns += $filteredPipelineRuns
    }

    Write-Host "$($allPipelineRuns.count) pipeline runs loaded successfully"
}
catch {
    Write-Host "Message: [$($_.Exception.Message)"]
    return
}