
#!/bin/bash

set -e

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WEB_ROOT="/var/www/html"

echo "=================================="
echo " AWS Web Server Deployment"
echo "=================================="

# Update package repository
echo "[1/5] Updating packages..."
sudo apt update -y

# Install Nginx
echo "[2/5] Installing Nginx..."
sudo apt install nginx -y

# Create web root
echo "[3/5] Preparing web directory..."
sudo mkdir -p "$WEB_ROOT"

# Deploy website files
echo "[4/5] Deploying website..."
sudo cp "$PROJECT_DIR/website/index.html" "$WEB_ROOT/"
sudo cp "$PROJECT_DIR/website/style.css" "$WEB_ROOT/"

# Set permissions
sudo chown -R root:root "$WEB_ROOT"
sudo chmod 755 "$WEB_ROOT"
sudo chmod 644 "$WEB_ROOT/index.html" "$WEB_ROOT/style.css"

# Start Nginx
echo "[5/5] Starting Nginx..."
sudo systemctl enable nginx
sudo systemctl restart nginx

echo "=================================="
echo " Deployment Successful!"
echo "=================================="

sudo systemctl is-active nginx

