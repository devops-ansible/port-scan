#!/usr/bin/env sh

SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
cd ${SCRIPT_PATH}

# install dependencies
apk -U upgrade
apk add nginx python3 py3-pip bash libxslt nmap
pip install j2cli
rm -rf /var/cache/apk/*

# move scripts to destination
chmod a+x scripts/*
mv        scripts/*  /usr/local/bin/

# move NGINX Configuration to destination
j2 nginx.conf.j2 > /etc/nginx/nginx.conf
