
$ApplicationName = "evergreen-ip-authentication"
$IdentifierUri = "https://evergreenip.azurewebsites.net"
$ReplyURls = @("https://evergreenip.azurewebsites.net/.auth/login/aad/callback")
$ServicePrincipal = Get-AzADServicePrincipal -DisplayName $ApplicationName
if ([string]::IsNullOrEmpty($ServicePrincipal)) {

    Write-Host "Creating new Application"
    $Application = New-AzADApplication -DisplayName $ApplicationName -IdentifierUris $IdentifierUri  -ReplyUrls $ReplyURls
    $ServicePrincipal = New-AzADServicePrincipal -ApplicationId $Application.ApplicationId
    return $ServicePrincipal.ApplicationId
}
else {
    Write-Host "Updating Application"
    $Application = Get-AzADApplication -DisplayName $ApplicationName
    $Application | Set-AzADApplication -IdentifierUri $IdentifierUri -ReplyUrl $ReplyURls
    return $ServicePrincipal.ApplicationId
}