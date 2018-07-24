#!/bin/bash

mount /dev/vdb1 /mnt

echo -e "set nu\nset noai nosi" > ~/.vimrc
sed -i 's/alF/lF/' ~/.bashrc

git config --global user.email "chenq182@sina.com"
git config --global user.name "Quan Chen"

dpkg -i *.deb
cp docker-compose /usr/local/bin/
docker version

umount /mnt
