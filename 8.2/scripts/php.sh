#!/bin/sh -eux

# Here, we are going to install PHP 8.2
apt-get install --no-install-recommends \
    php8.2-bcmath \
    php8.2-cli \
    php8.2-common \
    php8.2-curl \
    php8.2-dev \
    php8.2-fpm \
    php8.2-gd \
    php8.2-imap \
    php8.2-imagick \
    php8.2-imap \
    php8.2-intl \
    php8.2-mbstring \
    php8.2-mysql \
    php8.2-pcov \
    php8.2-ssh2 \
    php8.2-soap \
    php8.2-xml \
    php8.2-yaml \
    php8.2-zip \
    -y

# Here, we are going to create default directory for php
mkdir -p /run/php

# Here we are going to make sure that PHP 8.2 is default
sudo update-alternatives --set php /usr/bin/php8.2