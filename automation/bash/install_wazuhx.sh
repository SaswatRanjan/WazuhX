#!/bin/bash
set -e

WAZUH_VERSION="4.7.5"
MANAGER_IP="YOUR_MANAGER_IP"

echo "[+] Updating system..."
sudo apt update && sudo apt upgrade -y

echo "[+] Installing dependencies..."
sudo apt install curl apt-transport-https unzip wget lsb-release gnupg -y

echo "[+] Adding Wazuh repository..."
curl -s https://packages.wazuh.com/key/GPG-KEY-WAZUH | sudo apt-key add -
echo "deb https://packages.wazuh.com/4.x/apt/ stable main" | sudo tee /etc/apt/sources.list.d/wazuh.list
sudo apt update

echo "[+] Installing Wazuh manager..."
sudo apt install wazuh-manager=$WAZUH_VERSION-* -y

echo "[+] Enabling and starting manager..."
sudo systemctl daemon-reload
sudo systemctl enable wazuh-manager
sudo systemctl start wazuh-manager

echo "[+] Installing Filebeat..."
sudo apt install filebeat -y

echo "[+] Installation complete."
sudo systemctl status wazuh-manager --no-pager