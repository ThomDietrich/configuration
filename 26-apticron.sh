#!/usr/bin/env bash

#first commit, not tested

#TODO set mail and systemname by parameter
apt update && apt install -y apticron
#sed -i 's/^EMAIL="root"/EMAIL="missing@link.de"/g' /etc/apticron/apticron.conf
#sed -i 's/^\# SYSTEM="foobar.example.com"/SYSTEM="Nameless System"/g' /etc/apticron/apticron.conf
sed -i 's/^\# NOTIFY_NEW="0"/NOTIFY_NEW="1"/g' /etc/apticron/apticron.conf
sed -i 's/^\# CUSTOM_FROM=""/CUSTOM_FROM="Nameless System <blaa@blub.de>"/g' /etc/apticron/apticron.conf
echo -e '\nCUSTOM_SUBJECT="apticron for $SYSTEM: $NUM_PACKAGES update(s) available"' >> /etc/apticron/apticron.conf

echo -e '18 18 * * 1 root if test -x /usr/sbin/apticron; then /usr/sbin/apticron --cron; else true; fi\n18 18 * * 4 root if test -x /usr/sbin/apticron; then /usr/sbin/apticron --cron; else true; fi\n' > /etc/cron.d/apticron

service cron restart