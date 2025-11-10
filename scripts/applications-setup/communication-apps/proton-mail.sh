#!/bin/bash

# Source the common script
# shellcheck disable=SC1091
source "$(dirname "$0")/../../common-script.sh"

# --- Proton Mail ---
# Check if Proton Mail is already installed
if [ -d "/Applications/Proton Mail.app" ]; then
    echo "Proton Mail is already installed."
else
    # Install Proton Mail
    echo "Installing Proton Mail..."
    brew install --cask proton-mail
fi
