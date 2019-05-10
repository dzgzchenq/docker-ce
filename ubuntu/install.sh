#!/bin/bash

mount /dev/vdb1 /mnt

echo -e "set nu\nset noai nosi" > ~/.vimrc
sed -i 's/alF/lF/' ~/.bashrc

git config --global user.email "chenq182@sina.com"
git config --global user.name "Quan Chen"

wget -c https://download.docker.com/linux/ubuntu/dists/bionic/pool/stable/amd64/containerd.io_1.2.5-1_amd64.deb
wget -c https://download.docker.com/linux/ubuntu/dists/bionic/pool/stable/amd64/docker-ce-cli_18.09.6~3-0~ubuntu-bionic_amd64.deb
wget -c https://download.docker.com/linux/ubuntu/dists/bionic/pool/stable/amd64/docker-ce_18.09.6~3-0~ubuntu-bionic_amd64.deb
dpkg -i *.deb
systemctl start docker.service
systemctl enable docker.service
docker version
wget -c https://github.com/docker/compose/releases/download/1.24.0/docker-compose-Linux-x86_64
cp docker-compose-Linux-x86_64 /usr/local/bin/docker-compose

umount /mnt
