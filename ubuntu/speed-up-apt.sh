#!/bin/bash

# info
# cat /etc/apt/sources.list | grep -oE "http://.*{1,}.com" | uniq

# speed
cp /etc/apt/sources.list /etc/apt/sources.list.backup \
  && sed -i 's/cn.archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list \
  && sed -i 's/security.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list \
  && apt-get update -y && apt-get upgrade -y

# refs
# developer.aliyun.com
