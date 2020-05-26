#!/bin/bash
# install and start docker
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum -y install docker-ce
mkdir -p /etc/docker
tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://bbqhz556.mirror.aliyuncs.com"]
}
EOF

sudo systemctl start docker
