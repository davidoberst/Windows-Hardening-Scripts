#Enumerate SMB Shares (Mitigation)
#EXECUTE AS AN ADMIN!!!

if(Test-Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Lsa'){
Write-Host "Route Founded..."
Set-Location 'HKLM:\SYSTEM\CurrentControlSet\Control\Lsa'
Get-ChildItem
Get-ItemProperty -Name RestrictAnonymous
Set-ItemProperty -Value '1'
gpduptadte / force
Start-Sleep -Seconds1
Write-Warning "Value Changed!"
}
else{
Write-Warning "Route not founded!"
}