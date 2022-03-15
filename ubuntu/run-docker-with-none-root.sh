#!/bin/bash

# add group
cat /etc/group | grep -e "^docker:" >/dev/null
[ $? -ne 0 ] && groupadd docker

# add user to group
usermod -aG docker ymc

# update group
#newgrp docker


# restart service
service docker restart

# set it auto start when boot
systemctl enable docker.service >/dev/null 2>&1

echo "note:to active it"
#echo "note:restart service"
echo "note:close bash shell"
echo "note:you must to reboot in vm"

# sudo run-docker-with-none-root.sh ymc
