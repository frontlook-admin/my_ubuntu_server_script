#!/bin/sh
echo
echo
echo "Running Basic Setup Script.... By Dev Chakraborty ;)"
echo "Updating Ubuntu........."
echo
apt update & apt upgrade -y
echo
echo
echo "Installing/Updating Openssh Server......"
apt install openssh-server
echo
echo
echo "Installing/Updating MySql Server...."
apt install mysql-server
echo
echo
echo "Copying Startup Script to /etc/init.d/...."
cp mystartup.sh /etc/init.d/mystartup.sh
echo
echo
echo "Configuring Startup Script..." 
chmod +x /etc/init.d/mystartup.sh
echo
echo
echo "Copying custom_uwf.service to /etc/systemd/system/...."
cp custom_uwf.service /etc/systemd/system/custom_uwf.service
echo
echo
echo "Starting up service that will run mystartup.sh at every reboot..."
systemctl enable custom_uwf.service
echo
echo
echo "Work Completed...."
echo "Exiting..."
echo
echo
