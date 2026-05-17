Write-Host "===== WazuhX Windows Health Check ====="

Write-Host "[+] Wazuh Service Status:"
Get-Service WazuhSvc

Write-Host "[+] Sysmon Service Status:"
Get-Service Sysmon64 -ErrorAction SilentlyContinue

Write-Host "[+] Disk Usage:"
Get-PSDrive -PSProvider FileSystem

Write-Host "[+] Running Security Events Check:"
Get-WinEvent -LogName Security -MaxEvents 20

Write-Host "[+] PowerShell Logs Check:"
Get-WinEvent -LogName Microsoft-Windows-PowerShell/Operational -MaxEvents 20

Write-Host "===== Health Check Complete ====="