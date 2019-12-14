#!/bin/sh
apt install openssh
apt install mysql-server
cp mystartup.sh /etc/init.d/mystartup.sh
cp custom_uwf.service /etc/systemd/system/custom_uwf.service
chmod +x /etc/init.d/mystartup.sh
systemctl enable custom_uwf.service
