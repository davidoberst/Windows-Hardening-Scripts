#NTLM Incoming traffic not restricted (Mitigation)
#Disable NTLM on any AD CS Servers in your domain using the group policy Network security: Restrict NTLM: Incoming NTLM traffic.
#CVE-2021-36942
$path = 'HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0'
if(Test-Path $path){
  Get-ChildItem
  Set-ItemProperty -Name 'RestrictReceivingNTLMTraffic' -Value '2' 
}else{
Write-Warning "PATH NOT FOUNDED."
}

