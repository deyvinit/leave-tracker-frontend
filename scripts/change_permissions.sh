#!/bin/bash
set -e

echo "Configuring ownership and permissions for /var/www/html..."

# Set ownership to Apache user (www-data on Ubuntu)
chown -R www-data:www-data /var/www/html

# Set directories to 755 and files to 644
find /var/www/html -type d -exec chmod 755 {} \;
find /var/www/html -type f -exec chmod 644 {} \;
