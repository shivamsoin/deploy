#!/bin/bash
echo "Setting Up Dependencies"
sudo apt-get update
sudo ufw allow 'Nginx Full' --assume-yes # nginx setup
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
echo "Enter Repo link :"
read link
git clone $link
echo "Enter Repo name"
read name 
cd $name
echo "Enter the js file name with .js extension"
read file
pm2 start $file
pm2 status 
echo "Testing App on Local Host"
curl http://localhost:8080














