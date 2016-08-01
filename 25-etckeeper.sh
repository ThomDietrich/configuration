#!/usr/bin/env bash

#first commit, not tested

# if git not exists, cancel

apt update && apt install -y etckeeper

sed -i 's/VCS="bzr"/\#VCS="bzr"/g' /etc/etckeeper/etckeeper.conf
sed -i 's/\#VCS="git"/VCS="git"/g' /etc/etckeeper/etckeeper.conf

OLDPATH=`pwd` 
cd /etc
etckeeper init
git status
git commit -m "initial checkin"
git gc
git status
cd $OLDPATH