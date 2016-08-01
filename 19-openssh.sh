#!/usr/bin/env bash

#first commit, not tested
#TODO users parameter
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
 
sed -i "s/^\#Port 22/Port 22/g" /etc/ssh/sshd_config
sed -i "s/^\#Protocol 2/Protocol 2/g" /etc/ssh/sshd_config
sed -i "s/^HostKey \/etc\/ssh\/ssh_host_dsa_key/\#HostKey \/etc\/ssh\/ssh_host_dsa_key/g" /etc/ssh/sshd_config
sed -i "s/^HostKey \/etc\/ssh\/ssh_host_ecdsa_key/\#HostKey \/etc\/ssh\/ssh_host_ecdsa_key/g" /etc/ssh/sshd_config
sed -i "s/^\#ServerKeyBits 1024/ServerKeyBits 1024/g" /etc/ssh/sshd_config
sed -i "s/^\#LoginGraceTime 2m/LoginGraceTime 30/g" /etc/ssh/sshd_config
sed -i "s/^\#PermitRootLogin yes/PermitRootLogin no/g" /etc/ssh/sshd_config
#sed -i "s/^PermitRootLogin no/PermitRootLogin no\nAllowUsers myuser/g" /etc/ssh/sshd_config
sed -i "s/^\#IgnoreRhosts yes/IgnoreRhosts yes/g" /etc/ssh/sshd_config
 
echo "" >> /etc/ssh/sshd_config
echo "KexAlgorithms curve25519-sha256@libssh.org,diffie-hellman-group-exchange-sha256" >> /etc/ssh/sshd_config
echo "Ciphers chacha20-poly1305@openssh.com,aes256-gcm@openssh.com,aes128-gcm@openssh.com,aes256-ctr,aes192-ctr,aes128-ctr" >> /etc/ssh/sshd_config
echo "MACs hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,hmac-ripemd160-etm@openssh.com,umac-128-etm@openssh.com,hmac-sha2-512,hmac-sha2-256,hmac-ripemd160,umac-128@openssh.com" >> /etc/ssh/sshd_config
 
service ssh restart

mkdir ~/.ssh
touch ~/.ssh/authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
# Input your public key in openSSH format: 
vim ~/.ssh/authorized_keys

# After setting up and testing public key authentication ONLY!!
#sed -i 's/^\#PasswordAuthentication/PasswordAuthentication/g' /etc/ssh/sshd_config
#sed -i 's/^PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
#sed -i 's/^ChallengeResponseAuthentication yes/ChallengeResponseAuthentication no/g' /etc/ssh/sshd_config
#sed -i 's/^\#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
#service ssh restart