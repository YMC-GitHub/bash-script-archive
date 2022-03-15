#!/bin/bash

mkdir -p /etc/docker
cat > /etc/docker/daemon.json << 'EOF'
{
  "registry-mirrors": ["https://fudfkcar.mirror.aliyuncs.com"]
}
EOF

# chmod +x speed-up-docker.sh
# sudo speed-up-docker.sh
