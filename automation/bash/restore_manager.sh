#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <backup-file.tar.gz>"
    exit 1
fi

BACKUP_FILE="$1"

echo "[+] Restoring WazuhX backup from $BACKUP_FILE"
sudo systemctl stop wazuh-manager
sudo tar -xzvf "$BACKUP_FILE" -C /
sudo systemctl start wazuh-manager

echo "[+] Restore complete."
sudo systemctl status wazuh-manager --no-pager