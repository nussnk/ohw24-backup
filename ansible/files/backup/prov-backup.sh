#!/bin/bash
cat /vagrant/keys/borg.pub >> /home/borg/.ssh/authorized_keys
chmod 600 /home/borg/.ssh/authorized_keys
chown borg:borg /home/borg/.ssh/authorized_keys


