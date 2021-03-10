FROM php:7.2-fpm

LABEL maintainer="Isidro Garcia <isidro.a.garcia@gmail.com>"
LABEL version="1.0"
ARG PHALCON_VERSION=4.1.0
ARG PHALCON_EXT_PATH=php7/64bits


RUN apt-get update && apt-get install -y \
    cron \
    anacron \
    libpcre3-dev \
    libmcrypt-dev \
    libxml2-dev \
    zlib1g-dev \
    libssh2-1 \
    libssh2-1-dev \
    libpng-dev \
    --no-install-recommends \
    && docker-php-ext-install -j$(nproc) pdo pdo_mysql mbstring soap zip gd \
    && cp /usr/local/bin/php /usr/bin/


RUN set -xe && \
    # Install PSR
    pecl install psr-1.0.0 && \
    docker-php-ext-enable psr && \
    # Download Phalcon
    curl -LO https://github.com/phalcon/cphalcon/archive/v${PHALCON_VERSION}.tar.gz && \
    tar xzf ${PWD}/v${PHALCON_VERSION}.tar.gz && \
    docker-php-ext-install -j $(getconf _NPROCESSORS_ONLN) \
        ${PWD}/cphalcon-${PHALCON_VERSION}/build/${PHALCON_EXT_PATH} \
    && \
    # Remove all temp files
    rm -r \
        ${PWD}/v${PHALCON_VERSION}.tar.gz \
        ${PWD}/cphalcon-${PHALCON_VERSION} \
    && \
    php -m
        

ENV WEB_DOCUMENT_ROOT=/var/www/html/application/public

WORKDIR /var/www/html