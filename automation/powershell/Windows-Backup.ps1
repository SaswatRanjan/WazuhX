$BackupDir = "C:\WazuhX\Backups"
$Date = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$BackupFile = "$BackupDir\WazuhX_Backup_$Date.zip"

New-Item -ItemType Directory -Force -Path $BackupDir

Write-Host "[+] Backing up Wazuh configuration..."
Compress-Archive -Path "C:\Program Files (x86)\ossec-agent\*" -DestinationPath $BackupFile

Write-Host "[+] Backup completed: $BackupFile"