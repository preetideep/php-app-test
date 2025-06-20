#!/bin/bash
set -e #exit immmediately on error

echo "[INFO] Updating system packages..."
yum update -y

echo "[INFO] Installing Apache and PHP..."
yum install -y httpd php

echo "[INFO] Enabling and starting Apache service..."
systemctl enable httpd
systemctl restart httpd
