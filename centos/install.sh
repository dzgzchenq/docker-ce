#!/bin/bash

mount /dev/vdb1 /mnt

yum -y install vim-enhanced
cp /mnt/docker-ce/centos/vimrc ~/.vimrc
echo "alias vi='vim'" >> ~/.bashrc

yum -y install git
git config --global user.email "chenq182@sina.com"
git config --global user.name "Quan Chen"

yum -y install /mnt/docker-ce/centos/libtool-ltdl-2.4.2-22.el7_3.x86_64.rpm
yum -y install /mnt/docker-ce/centos/libseccomp-2.3.1-3.el7.x86_64.rpm
yum -y install /mnt/docker-ce/centos/container-selinux-2.33-1.git86f33cd.el7.noarch.rpm
yum -y install /mnt/docker-ce/centos/docker-ce-17.12.0.ce-1.el7.centos.x86_64.rpm
systemctl start docker.service
systemctl enable docker.service
cp /mnt/docker-ce/docker-compose /usr/local/bin/
docker version

umount /mnt
