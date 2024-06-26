#!/usr/bin/env bash

echo -e "\033[32m"
echo -e "=============================="
echo -e "  Node.js: v$(node --version | sed 's/^v//')"
echo -e "  Yarn:    v$(yarn --version | sed 's/^v//')"
echo -e "=============================="
echo -e "\033[0m"
yarn cache clean
apt purge --yes \
    nodejs yarnpkg
apt autoremove --yes
