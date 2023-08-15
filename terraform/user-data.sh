#!/bin/bash
sudo apt update
sudo apt install -y nginx
sudo chmod 644 /var/www/html/index.nginx-debian.html
echo "Hi, Hassan. This is a test deployment" | sudo tee /var/www/html/index.nginx-debian.html