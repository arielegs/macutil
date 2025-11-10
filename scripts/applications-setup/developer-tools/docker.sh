#!/bin/bash

# Source the common script
# shellcheck disable=SC1091
source "$(dirname "$0")/../../common-script.sh"

# --- Docker ---
# Check if Docker is already installed
if command -v docker &>/dev/null; then
    echo "Docker is already installed."
else
    # Install Docker
    echo "Installing Docker..."
    brew install --cask docker
fi
