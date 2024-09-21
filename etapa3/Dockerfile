FROM php:8.2-fpm

# Instalar dependências para GD, intl, mysqli, bz2, zip, exif, ldap e openssl
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libicu-dev \
    libbz2-dev \
    libzip-dev \
    libldap2-dev \
    libssl-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-configure ldap --with-ldap \
    && docker-php-ext-install gd intl mysqli bz2 zip exif ldap opcache \
    && apt-get -y autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Configurações de segurança para sessões PHP
RUN { \
    echo 'session.cookie_secure=On'; \
    echo 'session.cookie_httponly=On'; \
    echo 'session.cookie_samesite=Lax'; \
} > /usr/local/etc/php/conf.d/session_security.ini