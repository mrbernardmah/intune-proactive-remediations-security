<#
Version: 1.0
Author: Bernard Mah
Script: Detect_NetworkProtection
Description:
Version 1.0: Init
Run as: Admin
Context: 32 & 64 Bit
#> 
$version = 'C1'
if((Get-MpPreference).EnableNetworkProtection -eq 1) {
    Write-Output "$version COMPLIANT"
    exit 0
} else {
    Write-Output "$version NON-COMPLIANT"
    exit 1
}