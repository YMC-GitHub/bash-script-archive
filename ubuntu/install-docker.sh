#!/bin/bash
apt-get -y install curl
curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
docker --version
