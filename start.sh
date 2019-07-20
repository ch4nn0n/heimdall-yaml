#!/bin/sh

set -o nounset
set -o errexit
set -o pipefail

php artisan migrate --force

php artisan db:seed --force
