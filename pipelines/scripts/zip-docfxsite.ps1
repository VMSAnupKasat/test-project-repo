[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $DocfxSitePath,
    [Parameter()]
    [string]
    $ZipFilePath
)

# Compress build directory
Write-Verbose (Get-ChildItem $DocfxSitePath -Force | Out-String)

Get-ChildItem $DocfxSitePath -Force | foreach-object {
    Write-Verbose "Compressing $($_.fullname)"
    Compress-Archive -Path $_.fullname -DestinationPath $ZipFilePath -Update -ErrorAction Continue
}