[CmdletBinding()]
param (
    [Parameter(Mandatory)]
    [ValidateNotNullOrEmpty()]
    [string]$armOutput,

    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [switch]$makeOutput
    
)

Write-Output "Retrieved input: $armOutput"
$armOutputObj = $armOutput | ConvertFrom-Json

$armOutputObj.PSObject.Properties | ForEach-Object {
    $type = ($_.value.type).ToLower()
    $keyname = $_.Name
    $vsoAttribs = @("task.setvariable variable=$keyName")

    if ($type -eq "array") {
        $value = $_.Value.value.name -join ',' ## All array variables will come out as comma-separated strings
    }
    elseif ($type -eq "securestring") {
        $vsoAttribs += 'isSecret=true'
    }
    elseif ($type -ne "string") {
        throw "Type '$type' is not supported for '$keyname'"
    }
    else {
        $value = $_.Value.value
        Write-Output "Value: $value"
    }
        
    if ($makeOutput.IsPresent) {
        $vsoAttribs += 'isOutput=true'
    }

    Write-Output "Value: $value"

    $attribString = $vsoAttribs -join ';'
    $var = "##vso[$attribString]$value"
    Write-Output -InputObject $var
}