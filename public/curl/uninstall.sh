#!/usr/bin/env bash

uninstall_rpm() {
    sudo yum remove \
        --assumeyes \
        curl
    sudo yum autoremove --assumeyes
}

uninstall_deb() {
    sudo apt-get purge \
        --yes \
        curl
    sudo apt-get autoremove --yes
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
    if ! command -v curl &> /dev/null; then
        echo -e "\033[31m"
        echo -e "=============================="
        echo -e "  cURL: not installed"
        echo -e "=============================="
        echo -e "\033[0m"
        exit 1
    else
        version
        if grep -qi "anolis" /etc/os-release; then
            echo -e "\033[32m  Anolis OS\033[0m"
            uninstall_rpm
        elif grep -qi "debian" /etc/os-release; then
            echo -e "\033[32m  Debian\033[0m"
            uninstall_deb
        else
            echo -e "\033[31m  Unknown OS\033[0m"
            exit 1
        fi
    fi
}

main
