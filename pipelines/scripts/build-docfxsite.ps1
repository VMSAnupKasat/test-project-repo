[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $DocfxConfig,
    [Parameter()]
    [string]
    $ZipFilePath
)

function New-DocfxsiteToC {
    [CmdletBinding()]
    param (
        [Parameter()]
        [string]
        $DocfxSiteRoot
    )

    $summary = "# Summary`n"
    $rootPathDirectory = (Get-Item $GitbookRootPath).FullName
    $summaryFilePath = join-path $GitbookRootPath "SUMMARY.md"

    Get-ChildItem $GitbookRootPath -Recurse -Include "*.md" | Sort-Object -Property FullName | ForEach-Object {
        $summary = $summary + "`n"
        $identation = $_.FullName.Substring($rootPathDirectory.Length).Split("\").Length - 1
        $title = $_.Name.Replace(".md", "").Replace("-", " ")
        while ($identation -gt 0) {
            $summary = $summary + "`t"
            $identation--
        }
        $path = $_.FullName.Substring($rootPathDirectory.Length).Replace("\","/")
        $summary = $summary + "* [$title]($path)"
    }

    $summary | Out-File -FilePath $summaryFilePath -Encoding UTF8

    Write-Verbose (get-content $summaryFilePath | Out-String)
}

# create toc.yml
# New-GitbookSummary -DocfxSiteRoot "docs/"

# install docfx
choco install docfx -y

# build gitbook
$docfxSiteDirectory = '_docfxsite'
docfx $DocfxConfig -o $docfxSiteDirectory

if (Test-Path $docfxSiteDirectory) {
    $docfxSiteDirectory = $(Get-Item $docfxSiteDirectory).FullName
    Write-Verbose "Docfx site has ben created at '$docfxSiteDirectory'"
}

# Compress build directory
Write-Verbose (Get-ChildItem $docfxSiteDirectory -Force | Out-String)

Get-ChildItem $docfxSiteDirectory -Force | foreach-object {
    Write-Verbose "Compressing $($_.fullname)"
    Compress-Archive -Path $_.fullname -DestinationPath $ZipFilePath -Update -ErrorAction Continue
}