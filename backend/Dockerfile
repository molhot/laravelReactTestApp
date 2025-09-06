FROM php:8.2-apache

# 必要な拡張モジュール
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Apache 設定
RUN a2enmod rewrite

# Composer インストール
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

# 権限調整（Linux用）
RUN chown -R www-data:www-data /var/www/html
