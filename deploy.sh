
#!/bin/bash

set -e

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WEB_ROOT="/var/www/html"

echo " AWS Web Server Deployment"

echo "Updating packages..."
sudo apt update -y

echo "Installing Nginx..."
sudo apt install nginx -y

echo "Preparing web directory..."
sudo mkdir -p "$WEB_ROOT"

echo "Deploying website..."
sudo cp "$PROJECT_DIR/website/index.html" "$WEB_ROOT/"
sudo cp "$PROJECT_DIR/website/style.css" "$WEB_ROOT/"

sudo chown -R root:root "$WEB_ROOT"
sudo chmod 755 "$WEB_ROOT"
sudo chmod 644 "$WEB_ROOT/index.html" "$WEB_ROOT/style.css"

echo "Starting Nginx..."
sudo systemctl enable nginx
sudo systemctl restart nginx

echo "=================================="
echo " Deployment Successful!"
echo "=================================="

sudo systemctl is-active nginx

