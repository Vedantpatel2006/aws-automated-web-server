
# AWS Automated Web Server Deployment

## Overview
Automated deployment of a static website on an Ubuntu EC2 instance using Nginx and Bash scripting.

## Technologies
- Amazon EC2
- Ubuntu Linux
- Nginx
- Bash
- SSH
- Git and GitHub

## Features
- EC2 Ubuntu server hosting
- SSH key-based remote access
- Nginx installation automation
- Static website deployment
- Linux file permissions and ownership
- Nginx service management
- Website health checks
- Website backup automation

## Deployment

1. Launch an Ubuntu EC2 instance.
2. Configure the security group.
3. Connect using SSH.
4. Clone this repository.
5. Execute:

   chmod +x deploy.sh
   ./deploy.sh

6. Access the website using your EC2 public IPv4 address.

## Security Configuration

- SSH (TCP 22): Restrict to your trusted IP.
- HTTP (TCP 80): Allow public web traffic.
- HTTPS (TCP 443): Allow when HTTPS is configured.
- Keep AWS credentials and private SSH keys outside GitHub.

## Author
Vedant Patel

