#!/bin/bash


# Please make sure you are root user before executing this script
echo "Enter git repo Link : "
read link
echo "Enter repo name : "
read repo
cd /var/www/html
rm *
git clone $link
cd $repo
mv * ..
systemctl reload apache2
