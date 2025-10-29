#!/bin/bash
TAILSCALE_IP=$(tailscale ip -4)

if [[ -n "$TAILSCALE_IP" ]]; then
    echo "ssh $(jq -r '.inputs.username' $GITHUB_EVENT_PATH)@$TAILSCALE_IP"
else
    echo "Error: Tailscale not connected or no IP address assigned"
    exit 4
fi
