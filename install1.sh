#!/bin/bash

# Variables using install the software my practice
PACKAGES="mysql-server nginx python3 python3-pip"
SERVICE_MYSQL="mysqld"
SERVICE_NGINX="nginx"

echo "Updating system..."
sudo dnf update -y

echo "Installing packages: $PACKAGES"
sudo dnf install -y $PACKAGES

echo "Enabling and starting services..."
sudo systemctl enable $SERVICE_MYSQL $SERVICE_NGINX
sudo systemctl start $SERVICE_MYSQL $SERVICE_NGINX

echo "Installation done."
echo "Check versions:"
echo "  MySQL: mysql --version"
echo "  Nginx: nginx -v"
echo "  Python: python3 --version"
