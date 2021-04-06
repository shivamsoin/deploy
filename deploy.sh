#!/bin/bash
echo "Setting Up Dependencies"
sudo apt-get update
sudo ufw allow 'Nginx Full' # nginx setup
sudo apt upgrade
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs --assume-yes
# checking if its working or not
node --version 
npm --version
sudo apt-get install git --assume-yes #Git 
sudo npm install pm2 -g #Pm2
sudo apt update && upgrade
sudo apt install apache2 -assume-yes
systemctl start apache2
systemctl enable apache2
apt-get install build-essential --assume-yes
git clone https://github.com/shivamsoin/test.git
cd test
pm2 start index.js
pm2 status 













