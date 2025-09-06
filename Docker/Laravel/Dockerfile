FROM php:8.2-apache

# Composer インストール
RUN apt-get update && apt-get install -y unzip git && \
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer && \
    php -r "unlink('composer-setup.php');"

# Apache DocumentRoot 設定
ENV APACHE_DOCUMENT_ROOT /var/www/html/public

# Laravel インストール（初回のみ）
WORKDIR /var/www/html
RUN if [ ! -f /var/www/html/artisan ]; then \
      composer create-project laravel/laravel . ; \
    fi

EXPOSE 80
CMD ["apache2-foreground"]
