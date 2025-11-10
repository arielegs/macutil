#!/bin/bash

# Source the common script
# shellcheck disable=SC1091
source "$(dirname "$0")/../../common-script.sh"

# --- Proton Drive ---
# Check if Proton Drive is already installed
if [ -d "/Applications/Proton Drive.app" ]; then
    echo "Proton Drive is already installed."
else
    # Install Proton Drive
    echo "Installing Proton Drive..."
    brew install --cask proton-drive
fi
