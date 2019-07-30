#!/bin/sh

set -o nounset
set -o errexit
set -o pipefail

mkdir -p /config/www

touch /config/www/app.sqlite

php artisan migrate --force

php artisan db:seed --force

# copy icons
cp -af /data/icons/. /config/www/icons

# copy background
mkdir -p /config/www/backgrounds
touch /config/www/backgrounds/background.jpg
cp -af /data/background.jpg /config/www/backgrounds/background.jpg

cp -af /app/deployment.env /config/www/.env
