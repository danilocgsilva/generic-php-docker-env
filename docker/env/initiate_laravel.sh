#!/bin/bash

cd /var/www
chmod -R 777 storage
composer install
cp .env.example .env
php artisan key:generate
