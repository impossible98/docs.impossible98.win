#!/usr/bin/env bash

install_rpm() {
    sudo yum install \
        --assumeyes \
        curl
}

install_deb() {
    sudo apt-get install \
        --no-install-recommends \
        --yes \
        curl
}

version() {
    # curl version
    echo -e "\033[32m"
    echo -e "=============================="
    echo -e "  cURL: v$(curl --version | head -n 1 | awk '{print $2}')"
    echo -e "=============================="
    echo -e "\033[0m"
}

main() {
    if grep -qi "anolis" /etc/os-release; then
        echo -e "\033[32m  Anolis OS\033[0m"
        install_rpm
    elif grep -qi "debian" /etc/os-release; then
        echo -e "\033[32m  Debian\033[0m"
        install_deb
    else
        echo -e "\033[31m  Unknown OS\033[0m"
        exit 1
    fi
    version
}

main
