#!/bin/bash

echo "Updating system..."
sudo dnf update -y

echo "Installing MySQL..."
sudo dnf install -y mysql-server

echo "Installing Nginx..."
sudo dnf install -y nginx

echo "Installing Python 3 and pip..."
sudo dnf install -y python3 python3-pip

echo "Enabling and starting services..."
sudo systemctl enable mysqld nginx
sudo systemctl start mysqld nginx

echo "Installation done."
echo "Check: mysql --version, nginx -v, python3 --version"
