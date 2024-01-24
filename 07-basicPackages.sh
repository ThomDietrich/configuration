#!/usr/bin/env bash

#first commit, not tested
PACKAGES="mc vfu screen vim git curl wget  localepurge htop ntp deborphan unzip python3 python3-pip" 
PACKAGES2="apticron glances nmap smbclient cifs-utils sshfs fail2ban etckeeper logwatch"

apt update && apt upgrade

apt install -y $PACKAGES

echo "additional pakages you might want to install: $PACKAGES2"

#may be nice at later points of a system
apt autoclean && apt autoremove

# http://rarsoft.com/download.htm 
wget https://www.rarlab.com/rar/rarlinux-x64-700b4.tar.gz
tar -xzvf rarlinux*.tar.gz
(cd rar && sudo make install)
rm rarlinux*.tar.gz
rm -r rar
