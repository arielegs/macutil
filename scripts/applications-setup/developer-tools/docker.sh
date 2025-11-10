#!/bin/sh -e

. ../../common-script.sh

installDocker() {
    if ! brewprogram_exists docker; then
        printf "%b\n" "${YELLOW}Installing Docker...${RC}"
        brew install --cask docker
        if [ $? -ne 0 ]; then
            printf "%b\n" "${RED}Failed to install Docker. Please check your Homebrew installation or try again later.${RC}"
            osascript -e 'display notification "Failed to install Docker" with title "MacUtil"'
            exit 1
        fi
        printf "%b\n" "${GREEN}Docker installed successfully!${RC}"
        osascript -e 'display notification "Docker has been successfully installed" with title "MacUtil"'
    else
        printf "%b\n" "${GREEN}Docker is already installed.${RC}"
    fi
}

checkEnv
installDocker
