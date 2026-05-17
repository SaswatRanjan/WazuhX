#!/bin/bash

echo "===== WazuhX Health Check ====="

echo "[+] Manager Status:"
sudo systemctl is-active wazuh-manager

echo "[+] API Status:"
sudo systemctl is-active wazuh-dashboard || true

echo "[+] Disk Usage:"
df -h

echo "[+] Memory Usage:"
free -m

echo "[+] Recent Wazuh Errors:"
sudo tail -n 50 /var/ossec/logs/ossec.log | grep -i error || echo "No critical errors found"

echo "[+] Agent Connectivity Summary:"
sudo /var/ossec/bin/manage_agents -l || true

echo "===== Health Check Complete ====="