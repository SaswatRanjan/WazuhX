Write-Host "[+] Enabling Microsoft Defender protections..."
Set-MpPreference -DisableRealtimeMonitoring $false
Set-MpPreference -MAPSReporting Advanced
Set-MpPreference -SubmitSamplesConsent AlwaysPrompt

Write-Host "[+] Running Defender quick scan..."
Start-MpScan -ScanType QuickScan

Write-Host "[+] Defender baseline configured."