#!/bin/sh
mkdir -p /var/www/html/public

echo "Install Laravel Installer"
composer global require "laravel/installer"
echo "Create Laravel Project"
cd /var/www/html
composer create-project --prefer-dist laravel/laravel .
echo "Latest Version of Laravel is installed"

exit 0