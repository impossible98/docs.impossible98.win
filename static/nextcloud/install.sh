#!/usr/bin/env bash

curl -o nextcloud-29.0.3.tar.bz2 https://download.nextcloud.com/server/releases/nextcloud-29.0.3.tar.bz2
tar -xjvf nextcloud-29.0.3.tar.bz2
sudo apt update
sudo apt install \
    --no-install-recommends \
    --yes \
    caddy php php-fpm php-curl php-pgsql php-zip
sudo mv ./nextcloud /var/www/
sudo chown -R www-data:www-data /var/www/nextcloud
curl -o /etc/caddy/Caddyfile https://docs.impossible98.win/nextcloud/Caddyfile
