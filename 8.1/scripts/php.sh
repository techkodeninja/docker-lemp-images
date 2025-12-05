#!/bin/sh -eux

# Here, we are going to install PHP 8.1
apt-get install --no-install-recommends \
    php8.1-bcmath \
    php8.1-cli \
    php8.1-common \
    php8.1-curl \
    php8.1-dev \
    php8.1-fpm \
    php8.1-gd \
    php8.1-imap \
    php8.1-imagick \
    php8.1-imap \
    php8.1-intl \
    php8.1-mbstring \
    php8.1-mysql \
    php8.1-pcov \
    php8.1-ssh2 \
    php8.1-soap \
    php8.1-xml \
    php8.1-yaml \
    php8.1-zip \
    -y

# Here, we are going to create default directory for php
mkdir -p /run/php

# Here we are going to make sure that PHP 8.1 is default
sudo update-alternatives --set php /usr/bin/php8.1