#Enumerate SMB Shares Mitigation
#EXECUTE AS AN ADMIN!!!
if(Test-Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Lsa'){
Write-Host "Route Founded..."
Set-Location 'HKLM:\SYSTEM\CurrentControlSet\Control\Lsa'
Get-ChildItem
Get-ItemProperty -Name RestrictAnonymous
Set-ItemProperty 

}
else{
Write-Warning "Route not founded..."
}