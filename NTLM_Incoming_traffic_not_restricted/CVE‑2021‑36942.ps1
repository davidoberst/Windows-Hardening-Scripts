#NTLM Incoming traffic not restricted
$path = 'HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0'
Test-Path $path
if($path){
 Write-Output "founded"
}



