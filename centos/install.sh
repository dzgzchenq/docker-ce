#!/bin/bash

passwd
mount /dev/vdb1 /mnt
umount /mnt
yum -y install vim-enhanced
vi .vimrc
echo "alias vi='vim'" >> ~/.bashrc
yum -y install git
git config --global user.email "chenq182@sina.com"
git config --global user.name "Quan Chen"
wget -c https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.2.5-3.1.el7.x86_64.rpm
wget -c https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-cli-18.09.6-3.el7.x86_64.rpm
wget -c https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-18.09.6-3.el7.x86_64.rpm
yum -y install ./containerd.io-1.2.5-3.1.el7.x86_64.rpm
yum -y install ./docker-ce-cli-18.09.6-3.el7.x86_64.rpm
yum -y install ./docker-ce-18.09.6-3.el7.x86_64.rpm
rm *.rpm
systemctl start docker.service
systemctl enable docker.service
wget -c https://github.com/docker/compose/releases/download/1.24.0/docker-compose-Linux-x86_64
mv docker-compose-Linux-x86_64 /usr/local/bin/docker-compose
chmod 555 /usr/local/bin/docker-compose
