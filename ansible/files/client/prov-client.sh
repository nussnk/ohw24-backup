#!/bin/bash
cat /vagrant/keys/borg.key >> /home/borg/.ssh/id_rsa
chmod 600 /home/borg/.ssh/id_rsa
chown borg:borg /home/borg/.ssh/id_rsa

cat /vagrant/keys/borg.key >> /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa
chown borg:borg /root/.ssh/id_rsa
# initialisation of borg
#borg init --encryption=repokey borg@192.168.11.160:/var/backup

