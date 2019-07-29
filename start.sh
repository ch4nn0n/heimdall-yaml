#!/bin/sh

set -o nounset
set -o errexit
set -o pipefail

mkdir -p /config/www

touch /config/www/app.sqlite

php artisan migrate --force

php artisan db:seed --force

cp -af /images/. /config/www/icons

cp -af /app/deployment.env /config/www/.env

cp -af /certs/tls.key /config/keys/cert.key
cp -af /certs/tls.crt /config/keys/cert.crt
