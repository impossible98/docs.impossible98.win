#!/usr/bin/env bash

apt update
apt install \
    --no-install-recommends \
    --yes \
    nodejs yarnpkg
# 如果存在ln 命令，则删除
if [ -e /usr/bin/yarn ]; then
    rm /usr/bin/yarn
fi
ln -s /usr/bin/yarnpkg /usr/bin/yarn
# node version
# yarn version
echo -e "\033[32m"
echo -e "=============================="
echo -e "  Node.js: v$(node --version | sed 's/^v//')"
echo -e "  Yarn:    v$(yarn --version | sed 's/^v//')"
echo -e "=============================="
echo -e "\033[0m"
