#!/bin/bash

CERT_DIR="/etc/ssl/wazuhx"
DOMAIN="yourdomain.com"
EMAIL="admin@yourdomain.com"

echo "[+] Installing Certbot..."
sudo apt install certbot -y

echo "[+] Renewing/Generating certificates..."
sudo certbot certonly --standalone -d $DOMAIN --non-interactive --agree-tos -m $EMAIL

mkdir -p "$CERT_DIR"
sudo cp /etc/letsencrypt/live/$DOMAIN/fullchain.pem "$CERT_DIR/"
sudo cp /etc/letsencrypt/live/$DOMAIN/privkey.pem "$CERT_DIR/"

echo "[+] Restarting services..."
sudo systemctl restart wazuh-manager
sudo systemctl restart filebeat || true

echo "[+] Certificate deployment complete."