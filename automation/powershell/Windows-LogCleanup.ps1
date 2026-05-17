Write-Host "[+] Cleaning old Wazuh logs..."
Get-ChildItem "C:\Program Files (x86)\ossec-agent\logs\*.log" |
Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-30) } |
Remove-Item -Force

Write-Host "[+] Log cleanup complete."