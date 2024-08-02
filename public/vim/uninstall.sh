#!/usr/bin/env bash

uninstall_rpm() {
    sudo yum remove \
        --assumeyes \
        vim
    sudo yum autoremove --assumeyes
}

uninstall_deb() {
    sudo apt purge \
        --yes \
        vim
    sudo apt autoremove --yes
}

version() {
    # vim version
    echo -e "\033[32m"
    echo -e "=============================="
    echo -e "  Vim: v$(vim --version | head -n 1 | awk '{print $5}')"
    echo -e "=============================="
    echo -e "\033[0m"
}

main() {
    if ! command -v vim &> /dev/null; then
        echo -e "\033[31m"
        echo -e "=============================="
        echo -e "  Vim: not installed"
        echo -e "=============================="
        echo -e "\033[0m"
        exit 1
    else
        version
        if grep -qi "anolis" /etc/os-release; then
            uninstall_rpm
        elif grep -qi "debian" /etc/os-release; then
            echo -e "  Debian"
            install_deb
        else
            echo -e "  Unknown OS"
            exit 1
        fi
    fi
}

main
