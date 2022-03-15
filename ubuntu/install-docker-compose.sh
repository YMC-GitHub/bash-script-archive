#!/bin/bash

# base conf
IDC_VERSION=1.29.2

#speed up by https://ghproxy.com/
IDC_SPEEDUP_URL=https://ghproxy.com/

# insall from docker offical github
curl -L "${IDC_SPEEDUP_URL}https://github.com/docker/compose/releases/download/${IDC_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# apply executable permissions to the binary
chmod +x /usr/local/bin/docker-compose

# create a symbolic link
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# check his version
docker-compose --version
