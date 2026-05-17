$ManagerIP = "YOUR_MANAGER_IP"
$AgentInstaller = "https://packages.wazuh.com/4.x/windows/wazuh-agent-4.7.5-1.msi"
$InstallerPath = "$env:TEMP\wazuh-agent.msi"

Write-Host "[+] Downloading Wazuh Agent..."
Invoke-WebRequest -Uri $AgentInstaller -OutFile $InstallerPath

Write-Host "[+] Installing Wazuh Agent..."
Start-Process msiexec.exe -Wait -ArgumentList "/i $InstallerPath /qn WAZUH_MANAGER='$ManagerIP'"

Write-Host "[+] Starting Wazuh Agent service..."
Start-Service WazuhSvc
Set-Service WazuhSvc -StartupType Automatic

Write-Host "[+] Installation complete."
Get-Service WazuhSvc