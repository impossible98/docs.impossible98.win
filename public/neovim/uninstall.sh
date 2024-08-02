#!/usr/bin/env bash

uninstall_rpm() {
    sudo yum remove \
        --assumeyes \
        neovim
    sudo yum autoremove --assumeyes
}

uninstall_deb() {
    sudo apt purge 
        --yes \
        neovim
    sudo apt autoremove --yes
}

version() {
    # neovim version
    echo -e "\033[32m"
    echo -e "=============================="
    echo -e "  Neovim: v$(nvim --version | head -n 1 | awk '{print $2}' | sed 's/^v//')"
    echo -e "=============================="
    echo -e "\033[0m"
}

main() {
    if ! command -v nvim &> /dev/null; then
        echo -e "\033[31m"
        echo -e "=============================="
        echo -e "  Neovim: not installed"
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
