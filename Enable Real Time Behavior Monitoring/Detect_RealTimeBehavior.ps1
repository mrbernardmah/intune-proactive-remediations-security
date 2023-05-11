﻿<#
Version: 1.0
Author: Bernard Mah
Script: Get-RealTimeBehaviour
Description:
Version 1.0: Init
Run as: Admin
Context: 32 & 64 Bit
#> 

$version = 'C1'
if((Get-MpComputerStatus).BehaviorMonitorEnabled  -eq "True") {
    Write-Output "$version COMPLIANT"
    exit 0
} else {
    Write-Output "$version NON-COMPLIANT"
    exit 1
}