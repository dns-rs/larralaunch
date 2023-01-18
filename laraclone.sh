#!/bin/bash 
composer install
npm install
php artisan key:generate
sudo chown -R $USER:www-data storage
sudo chown -R $USER:www-data bootstrap/cache
chmod -R 775 storage
chmod -R 755 bootstrap/cache
npm run dev