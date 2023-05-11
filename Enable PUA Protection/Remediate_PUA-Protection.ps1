<#
Version: 1.0
Author: Bernard Mah
Script: Remediate_PUA-Protection
Description: Check if PUA is enabled.
Version 1.0: Init
Run as: User/Admin
Context: 32 & 64 Bit
#> 

$version = 'R1'
try {
    Set-MpPreference -PUAProtection Enabled
    Write-Output "$version Remediated"
    exit 0
}
catch {
    Write-Output "$version Failed"
    exit 1
}