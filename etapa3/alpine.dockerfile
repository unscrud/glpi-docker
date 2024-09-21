FROM php:8.2-fpm-alpine

# Instalar dependências para GD, intl, mysqli, bz2, zip, exif, ldap e openssl
RUN apk add --no-cache \
    libpng-dev \
    libjpeg-turbo-dev \
    freetype-dev \
    icu-dev \
    bzip2-dev \
    libzip-dev \
    openldap-dev \
    openssl-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-configure ldap --with-ldap \
    && docker-php-ext-install gd intl mysqli bz2 zip exif ldap opcache

# Configurações de segurança para sessões PHP
RUN { \
    echo 'session.cookie_secure=On'; \
    echo 'session.cookie_httponly=On'; \
    echo 'session.cookie_samesite=Lax'; \
} > /usr/local/etc/php/conf.d/session_security.ini
