$AgentName = $env:COMPUTERNAME
Write-Host "[+] Registering Windows endpoint: $AgentName"

& "C:\Program Files (x86)\ossec-agent\manage_agents.exe"

Write-Host "[+] Complete agent key exchange with manager."