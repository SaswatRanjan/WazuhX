#!/bin/bash

echo "[+] Cleaning old logs..."
sudo find /var/ossec/logs/ -type f -name "*.log" -mtime +30 -delete

echo "[+] Cleaning old backups..."
sudo find /var/backups/wazuhx/ -type f -mtime +60 -delete

echo "[+] Cleanup complete."