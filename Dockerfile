FROM php:7.3-alpine

ARG exercise_name

RUN apk update

RUN apk add --no-cache composer

COPY "./$exercise_name" "/usr/src/app"

RUN composer global require phpunit/phpunit

RUN cd /usr/src/app && composer install
