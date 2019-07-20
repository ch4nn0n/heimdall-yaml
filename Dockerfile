FROM php:7.3-fpm-alpine

WORKDIR /app

COPY . .

RUN mkdir -p /config/www && touch /config/www/app.sqlite

ENTRYPOINT sh
