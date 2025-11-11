
if(Test-Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Lsa'){
Write-Host "Route Founded..."
Set-Location 'HKLM:\SYSTEM\CurrentControlSet\Control\Lsa'
Get-ChildItem
}
else{
Write-Warning "Route not founded..."
}