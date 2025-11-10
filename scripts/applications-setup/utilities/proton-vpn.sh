#!/bin/bash

# Source the common script
# shellcheck disable=SC1091
source "$(dirname "$0")/../../common-script.sh"

# --- Proton VPN ---
# Check if Proton VPN is already installed
if [ -d "/Applications/Proton VPN.app" ]; then
    echo "Proton VPN is already installed."
else
    # Install Proton VPN
    echo "Installing Proton VPN..."
    brew install --cask proton-vpn
fi
