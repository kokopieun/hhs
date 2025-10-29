#!/bin/bash
sudo useradd -m $(jq -r '.inputs.username' $GITHUB_EVENT_PATH)
sudo adduser $(jq -r '.inputs.username' $GITHUB_EVENT_PATH) sudo
echo $(jq -r '.inputs.username' $GITHUB_EVENT_PATH):$(jq -r '.inputs.password' $GITHUB_EVENT_PATH) | sudo chpasswd
sudo sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo hostname $(jq -r '.inputs.computername' $GITHUB_EVENT_PATH)

# Install Tailscale
curl -fsSL https://tailscale.com/install.sh | sh

# Setup Tailscale
echo -e "$(jq -r '.inputs.password' $GITHUB_EVENT_PATH)\n$(jq -r '.inputs.password' $GITHUB_EVENT_PATH)" | sudo passwd "$USER"

# Authenticate Tailscale
sudo tailscale up --authkey $(jq -r '.inputs.tailscale_authkey' $GITHUB_EVENT_PATH) --hostname $(jq -r '.inputs.computername' $GITHUB_EVENT_PATH)

# Get Tailscale IP
sleep 10
tailscale status
