#!/bin/sh
if [ ! -d /var/www/html/public ] ; then
  echo "Install Laravel Installer"
  composer global require "laravel/installer"
  echo "Create Laravel Project"
  composer create-project --prefer-dist laravel/laravel /var/www/html
  echo "Latest Version of Laravel is installed"
else
  echo "PUBLIC directory already exist..."
  echo "SORRY : I don't want to break your actual project"
fi
