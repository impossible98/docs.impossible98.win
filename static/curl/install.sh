#!/usr/bin/env bash

apt update
apt install \
    --no-install-recommends \
    --yes \
    curl
# vim version
echo -e "\033[32m"
echo -e "=============================="
echo -e "  cURL: v$(curl --version | head -n 1 | awk '{print $2}')"
echo -e "=============================="
echo -e "\033[0m"
