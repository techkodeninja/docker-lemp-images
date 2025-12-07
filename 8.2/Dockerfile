FROM techkodeninja/ubuntu:24.04

# Here, we are going to set the frontend to no interactive.
ENV DEBIAN_FRONTEND=noninteractive

# Here, we are going to copy update.sh
ADD 8.2/scripts/update.sh /home/ubuntu/update.sh
RUN bash /home/ubuntu/update.sh && \
    rm -rf /home/ubuntu/update.sh

# Here, we are going to copy basic.sh
ADD 8.2/scripts/basic.sh /home/ubuntu/basic.sh
RUN bash /home/ubuntu/basic.sh && \
    rm -rf /home/ubuntu/basic.sh

# Here, we are going to copy php.sh
ADD 8.2/scripts/php.sh /home/ubuntu/php.sh
RUN bash /home/ubuntu/php.sh && \
    rm -rf /home/ubuntu/php.sh

# Here, we are going to configure composer
ADD 8.2/scripts/composer.sh /home/ubuntu/composer.sh
RUN bash /home/ubuntu/composer.sh && \
    rm -rf /home/ubuntu/composer.sh

# Here, we are goiing to add some basic configuration files
ADD 8.2/conf/main.conf /etc/supervisor/conf.d/main.conf
ADD 8.2/scripts/start.sh /usr/local/bin/start
RUN chmod +x /usr/local/bin/start

# Here, we are going to set fpm for both 8.0 and 8.2
ADD 8.2/conf/8.2-fpm.conf /etc/php/8.2/fpm/pool.d/www.conf
ADD 8.2/conf/nginx.conf /etc/nginx/nginx.conf
ADD 8.2/conf/default.conf /etc/nginx/sites-available/default

RUN rm -rf /var/www/html/index.nginx-debian.html

RUN chown -R ubuntu:ubuntu /var/www/html