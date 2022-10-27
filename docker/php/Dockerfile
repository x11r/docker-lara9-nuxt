FROM php:8.0.9-fpm-buster

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y install git unzip git supervisor \
    && pecl install apcu xdebug \
    && docker-php-ext-install mysqli pdo_mysql opcache \
    && docker-php-ext-enable apcu xdebug

COPY supervisord.conf /etc/supervisord.conf
COPY supervisord.d /etc/supervisord.d
CMD sh -c 'supervisord -c /etc/supervisord.conf'
