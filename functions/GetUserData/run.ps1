# Input bindings are passed in via param block.
param($Timer)

################################################################################
Select-AzSubscription -Subscription $env:SUBSCRIPTION_ID -Tenant $env:TENANT_ID

$appId = Get-AzKeyVaultSecret -VaultName $env:KEYVAULT_NAME -Name "appId" -AsPlainText
$apiKey = Get-AzKeyVaultSecret -VaultName $env:KEYVAULT_NAME -Name "apiKey" -AsPlainText
$ClientId = Get-AzKeyVaultSecret -VaultName $env:KEYVAULT_NAME -Name "spclientid" -AsPlainText
$ClientSecret = Get-AzKeyVaultSecret -VaultName $env:KEYVAULT_NAME -Name "spsecret" -AsPlainText


$headers = @{"Content-Type" = "application/json" }
$headers.add("x-api-key", $apiKey)

$query = @{"query" = "pageViews | where timestamp >= ago(60d) | extend refUri_ = tostring(customDimensions.refUri) | distinct user_AuthenticatedId | where (user_AuthenticatedId contains 'microsoft.com' and user_AuthenticatedId !='')" }
$body = ConvertTo-Json $query | % { [regex]::Unescape($_) }

Write-Host "Retrieving information from Application Insights..."

$result = Invoke-RestMethod "https://api.applicationinsights.io/v1/apps/$appId/query" -Headers $headers -Body $body -Method POST
$userlist = $result.tables.rows

$UsersGraph = @()

################################################
Write-Host "Getting user data..."
$cred = $ClientSecret | ConvertTo-SecureString -AsPlainText -Force
$credentials = new-object -typename System.Management.Automation.PSCredential -argumentlist $ClientId, $cred
Connect-AzAccount -TenantId $env:TENANT_ID -ServicePrincipal -Credential $credentials
$Token = Get-AzAccessToken -ResourceUrl "https://graph.microsoft.com/"
$AuthResponse_access_token = $Token.Token

foreach ($user in $userlist) {
    $UsersGraph += Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/users/$($user)" -Headers @{Authorization = "Bearer $($AuthResponse_access_token)" }
}

$UsersGraph

#storage account variables
Write-Host "Accessing the Storage Account..."

Connect-AzAccount -Identity
$resourceGroup = "Evergreen-Delivery-IP"
$storageAccountName = "7dhwxincpkvb6azfunctions"
$storageAccount = Get-AzStorageAccount -Name $storageAccountName -ResourceGroupName $resourceGroup
$ctx = $storageAccount.Context
$cloudTable = (Get-AzStorageTable -context $ctx -ErrorVariable ev -ErrorAction SilentlyContinue).CloudTable
$partitionKey = "Users"

Write-Host "Table name :" $cloudTable

foreach ($user in $UsersGraph) {
    Write-Host "Processing user: $($user.userPrincipalName)"
    if ($cloudTable) {
        try {
            $location = $user.officeLocation
            if (($location.Contains("MUNICH")) -or ($location.Contains("FRANKFURT")) -or ($location.Contains("BERLIN"))){
                Write-Host "User works in a city with a German name:" $user.officeLocation
                $userDisplayModified = "MsftGerman-"+(get-random)
                Add-AzTableRow -table $cloudTable -partitionKey $partitionKey -rowKey $user.id -property @{"UserDisplayName" = $userDisplayModified; 'JobTitle' = $user.jobTitle; 'UserPrincipalName' = $user.userPrincipalName; } -UpdateExisting
            }else{
                Add-AzTableRow -table $cloudTable -partitionKey $partitionKey -rowKey $user.id -property @{"UserDisplayName" = $user.displayName; 'JobTitle' = $user.jobTitle; 'UserPrincipalName' = $user.userPrincipalName; } -UpdateExisting
            }
        }
        catch {
            Write-Host "User $($user) Not Found"
        }
    }
    else {
        Write-host 'Table Storage Reference Not Found!'
    }
}
Write-Host "Table updated!"
################################################################################

# Get the current universal time in the default string format.
$currentUTCtime = (Get-Date).ToUniversalTime()

# The 'IsPastDue' property is 'true' when the current function invocation is later than scheduled.
if ($Timer.IsPastDue) {
    Write-Host "PowerShell timer is running late!"
}

# Write an information log with the current time.
Write-Host "PowerShell timer trigger function ran! TIME: $currentUTCtime"
