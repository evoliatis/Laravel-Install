FROM php:fpm-alpine
ADD ressources /
RUN apk upgrade --update && apk add --no-cache su-exec tzdata libzip-dev freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev \
        && cp /usr/share/zoneinfo/Europe/Paris /etc/localtime && echo "Europe/Paris" >  /etc/timezone \
        && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
        && docker-php-ext-configure zip --with-libzip \
        && docker-php-ext-install  gd zip pdo_mysql \
        && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
        && php composer-setup.php && php -r "unlink('composer-setup.php');" \
        && mv composer.phar /usr/local/bin/composer && chown www-data:www-data /var/www \
        && chmod +x /*.sh 

USER www-data
