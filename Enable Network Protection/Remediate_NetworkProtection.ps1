<#
Version: 1.0
Author: Bernard Mah
Script: Remediate_NetworkProtection
Description:
Version 1.0: Init
Run as: Admin
Context: 32 & 64 Bit
#> 

$version = 'R1'
try {
    Set-MpPreference -EnableNetworkProtection Enabled
    Write-Output "$version Remediated"
    exit 0
}
catch {
    Write-Output "$version Failed"
    exit 1
}