FROM php:7.3-alpine

ARG exercise_name

RUN apk update

RUN apk add --no-cache composer

COPY "./$exercise_name" "/usr/src/app"

RUN composer global require hirak/prestissimo
RUN composer global require phpunit/phpunit

RUN cd /usr/src/app && composer install

RUN addgroup -S appgroup && adduser -S -H appuser -G appgroup

RUN chmod 661 /composer 
RUN chown -R appuser:appgroup /usr/src/app

USER appuser
