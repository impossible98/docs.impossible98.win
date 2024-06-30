#!/usr/bin/env bash

if [ ! -d "$HOME/data" ]; then
    mkdir -p "$HOME/data"
fi
curl -o ~/data/plexmediaserver_1.40.3.8555-fef15d30c_amd64.deb https://downloads.plex.tv/plex-media-server-new/1.40.3.8555-fef15d30c/debian/plexmediaserver_1.40.3.8555-fef15d30c_amd64.deb
dpkg --install ~/data/plexmediaserver_1.40.3.8555-fef15d30c_amd64.deb

