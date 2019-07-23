#!/bin/sh

set -o nounset
set -o errexit
set -o pipefail

mkdir -p /config/www

touch /config/www/app.sqlite

php artisan migrate --force

php artisan db:seed --force

cp -rf /images /config/www/icons
