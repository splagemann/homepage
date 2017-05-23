#!/bin/sh
#

mkdir -p "/root/.ssh"
echo -e $PRIVATE_SSH_KEY > /root/.ssh/id_rsa
chmod 400 /root/.ssh/id_rsa
ssh-keyscan splagemann.de >> /root/.ssh/known_hosts

cd /tmp
scp -rp index.html img robots.txt $SSH:$REMOTEPATH
