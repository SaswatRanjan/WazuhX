$SysmonURL = "https://download.sysinternals.com/files/Sysmon.zip"
$DownloadPath = "$env:TEMP\Sysmon.zip"
$ExtractPath = "$env:TEMP\Sysmon"
$ConfigPath = "C:\WazuhX\sysmonconfig.xml"

Write-Host "[+] Downloading Sysmon..."
Invoke-WebRequest -Uri $SysmonURL -OutFile $DownloadPath

Write-Host "[+] Extracting Sysmon..."
Expand-Archive -Path $DownloadPath -DestinationPath $ExtractPath -Force

Write-Host "[+] Installing Sysmon..."
Start-Process "$ExtractPath\Sysmon64.exe" -ArgumentList "-accepteula -i $ConfigPath" -Wait

Write-Host "[+] Sysmon installation complete."
Get-Service Sysmon64