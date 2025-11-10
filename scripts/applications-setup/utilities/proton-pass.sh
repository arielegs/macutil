#!/bin/bash

# Source the common script
# shellcheck disable=SC1091
source "$(dirname "$0")/../../common-script.sh"

# --- Proton Pass ---
# Check if Proton Pass is already installed
if [ -d "/Applications/Proton Pass.app" ]; then
    echo "Proton Pass is already installed."
else
    # Install Proton Pass
    echo "Installing Proton Pass..."
    brew install --cask proton-pass
fi
