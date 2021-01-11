# Laravel-Install
Scripts and Tools to help install of Laravel with Docker

NEW : **compatible Mac m1 !**

## Introduction

In order to work in Laravel with this scripts you need to install before :

* Docker : from https://www.docker.com/
* Clone the Laravel-Install repository

## Start your project

Go to the Laravel_install directory with docker console and launch :

~~~
docker-compose up -d
~~~

This command will build all docker images locally

## Install for the first time 

If it's your first start of your project, you need to install laravel and init the web directory manualy. Don't panic, an install script is provided in the laravel_engine container. 

Just launch : 

~~~~
docker exec <project_engine_1> sh /install.sh
~~~~

You can find the exact laravel engine container name with the command (the container ended by engine_1) :

~~~~
docker ps
~~~~

## GO GO GO...

You can now access to your project and phpmyadmin :

* http://localhost:8000 : Laravel project. 
* http://localhost:8080 : PHPMyAdmin (default root password is *"secret"*)

For docker toolbox users (Windows 7 or old MacOS), the default IP is usually : **192.168.99.100** instead of **localhost**

## DevOps Only

I you want, you can play with image compilation : Dockerfile is given !