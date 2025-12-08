#!/bin/sh -eux

# Here, we are going to install PHP 8.3
apt-get install --no-install-recommends \
    php8.3-bcmath \
    php8.3-cli \
    php8.3-common \
    php8.3-curl \
    php8.3-dev \
    php8.3-fpm \
    php8.3-gd \
    php8.3-imap \
    php8.3-imagick \
    php8.3-imap \
    php8.3-intl \
    php8.3-mbstring \
    php8.3-mysql \
    php8.3-pcov \
    php8.3-ssh2 \
    php8.3-soap \
    php8.3-xml \
    php8.3-yaml \
    php8.3-zip \
    -y

# Here, we are going to create default directory for php
mkdir -p /run/php

# Here we are going to make sure that PHP 8.3 is default
sudo update-alternatives --set php /usr/bin/php8.3