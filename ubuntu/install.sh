#!/bin/bash

mount /dev/vdb1 /mnt

echo -e "set nu\nset noai nosi" > ~/.vimrc
sed -i 's/alF/lF/' ~/.bashrc

git config --global user.email "chenq182@sina.com"
git config --global user.name "Quan Chen"

dpkg -i /mnt/docker-ce/docker-ce_17.12.0~ce-0~ubuntu_amd64.deb
cp /mnt/docker-ce/docker-compose /usr/local/bin/
docker version

umount /mnt
