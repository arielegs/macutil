#!/bin/sh -e

. ../../common-script.sh

installDocker() {
    if ! brewprogram_exists docker; then
        printf "%b\n" "${YELLOW}Installing Docker...${RC}"
        
        # Run brew install in the background and show a spinner
        brew install --cask docker > /dev/null 2>&1 &
        pid=$!
        spin='-\|/'
        i=0
        while kill -0 $pid 2>/dev/null
        do
            i=$(( (i+1) % 4 ))
            printf "\r${spin:$i:1}"
            sleep .1
        done
        printf "\r"

        wait $pid
        if [ $? -ne 0 ]; then
            printf "%b\n" "${RED}Failed to install Docker. Please check your Homebrew installation or try again later.${RC}"
            exit 1
        fi
        printf "%b\n" "${GREEN}Docker installed successfully!${RC}"
    else
        printf "%b\n" "${GREEN}Docker is already installed.${RC}"
    fi
}

checkEnv
installDocker
