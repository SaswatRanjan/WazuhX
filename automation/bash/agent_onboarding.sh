#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <agent-name>"
    exit 1
fi

AGENT_NAME="$1"

echo "[+] Adding agent: $AGENT_NAME"
sudo /var/ossec/bin/manage_agents -a "$AGENT_NAME"

echo "[+] Extract key manually from output and deploy to endpoint."