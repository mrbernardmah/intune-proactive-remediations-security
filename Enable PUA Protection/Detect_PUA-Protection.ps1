<#
Version: 1.0
Author: Bernard Mah
Script: Get_PUA-Protection
Description: Check if PUA is enabled.
Version 1.0: Init
Run as: User/Admin
Context: 32 & 64 Bit
#> 

$version = 'C1'
if((Get-MpPreference).PUAProtection -eq 1) {
    Write-Output "$version COMPLIANT"
    exit 0
} else {
    Write-Output "$version NON-COMPLIANT"
    exit 1
}