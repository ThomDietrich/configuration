#!/usr/bin/env bash

#first commit, not tested
PACKAGES="mc vfu screen vim git curl wget apticron localepurge htop ntp deborphan unzip fail2ban etckeeper logwatch python python-pip python-setuptools python-software-properties software-properties-common" 
PACKAGES2="glances nmap smbclient cifs-utils sshfs"

apt update && apt upgrade

apt install -y $PACKAGES

echo "additional pakages you might want to install: $PACKAGES2"

#may be nice at later points of a system
apt autoclean && apt autoremove

# http://rarsoft.com/download.htm 
wget http://rarsoft.com/rar/rarlinux-x64-5.4.b4.tar.gz
tar -xzvf rarlinux*.tar.gz
(cd rar && make install)
rm rarlinux*.tar.gz
rm -r rar