#!/bin/sh

set -o nounset
set -o errexit
set -o pipefail

mkdir -p /config/www

touch /config/www/app.sqlite

php artisan migrate --force

php artisan db:seed --force

cp /images /config/www/icons
