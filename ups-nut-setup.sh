#!/bin/sh

sudo apt update
sudo apt install -y nut


echo "..........RUNNING NUT_SCANNER (on usb ports)............."
sudo nut-scanner -U


echo "..........use above data to edit /etc/nut/ups.conf......."
read -p "Press any key to edit the conf"
sudo nano /etc/nut/ups.conf

echo ".........Now edit the daemon file to LISTEN 0.0.0.0 3493."
read -p "Press any key to edit the conf"
sudo nano /etc/nut/upsd.conf

echo "Now edit the upsmon file to MONITOR UPSNAME@localhost 1 admin ADMIN_PASSWORD_HERE primary"
read -p "Press any key to edit the conf"
sudo nano /etc/nut/upsmon.conf


echo "Now edit the nut file to mode=netserver"
read -p "Press any key to edit the conf"
sudo nano /etc/nut/nut.conf

echo "Now edit the upsd users file to add admin and upsmon users"
read -p "Press any key to edit the conf"
sudo nano /etc/nut/upsd.users


echo "..........enabling all services.........................."
read -p "Press any key to edit the conf
sudo systemctl restart nut-server
sudo systemctl enable nut-server
sudo systemctl restart nut-monitor
sudo systemctl enable nut-monitor

