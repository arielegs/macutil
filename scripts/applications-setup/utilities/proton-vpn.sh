#!/bin/sh -e

. ../../common-script.sh

installProtonVPN() {
    if ! brewprogram_exists proton-vpn; then
        printf "%b\n" "${YELLOW}Installing Proton VPN...${RC}"
        brew install --cask proton-vpn
        if [ $? -ne 0 ]; then
            printf "%b\n" "${RED}Failed to install Proton VPN. Please check your Homebrew installation or try again later.${RC}"
            exit 1
        fi
        printf "%b\n" "${GREEN}Proton VPN installed successfully!${RC}"
    else
        printf "%b\n" "${GREEN}Proton VPN is already installed.${RC}"
    fi
}

checkEnv
installProtonVPN
