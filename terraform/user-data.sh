#!/bin/bash
sudo apt update
sudo apt install -y nginx
sudo echo -e "Hi, Hassan\n This is a test deployment" > /var/www/html/index.nginx-debian.html