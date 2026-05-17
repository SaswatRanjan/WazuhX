#!/bin/bash

BACKUP_DIR="/var/backups/wazuhx"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/wazuhx_backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"

echo "[+] Creating backup..."
sudo tar -czvf "$BACKUP_FILE" \
    /var/ossec/etc \
    /var/ossec/ruleset \
    /var/ossec/logs \
    /etc/filebeat

echo "[+] Backup completed: $BACKUP_FILE"