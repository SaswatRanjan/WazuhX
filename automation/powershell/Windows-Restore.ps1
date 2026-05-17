param(
    [string]$BackupFile
)

if (-Not $BackupFile) {
    Write-Host "Usage: .\Windows-Restore.ps1 -BackupFile <path>"
    exit
}

Write-Host "[+] Stopping Wazuh service..."
Stop-Service WazuhSvc

Write-Host "[+] Restoring backup..."
Expand-Archive -Path $BackupFile -DestinationPath "C:\Program Files (x86)\ossec-agent" -Force

Write-Host "[+] Starting Wazuh service..."
Start-Service WazuhSvc

Write-Host "[+] Restore complete."