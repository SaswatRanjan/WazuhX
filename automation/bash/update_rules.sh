#!/bin/bash

echo "[+] Updating Wazuh rulesets..."
sudo apt update
sudo apt upgrade wazuh-manager -y

echo "[+] Restarting manager..."
sudo systemctl restart wazuh-manager

echo "[+] Rules update complete."