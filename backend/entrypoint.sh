FROM php:8.2-apache

RUN apt-get update && apt-get install -y unzip git

# PHP 拡張
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Apache mod_rewrite
RUN a2enmod rewrite

# Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

# 権限調整
RUN chown -R www-data:www-data /var/www/html
