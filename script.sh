#!/bin/bash

echo "Updating the server"
apt-get update
apt-get upgrade -y

echo "Installing apache2"
apt-get install apache2 -y

echo "Installing unzip"
apt-get install unzip -y

echo "Installing git"
apt installl git -y

echo "Downloading the app"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Unzip the application"
unzip main.zip

echo "Copy the application to the server"
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finished :)"
