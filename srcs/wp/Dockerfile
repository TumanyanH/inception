FROM debian:buster

RUN apt-get update
RUN apt install wget php7.3 php-mysql php-fpm curl -y

EXPOSE 9000

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./tools /var/www/

RUN chmod +x /var/www/starter.sh

WORKDIR /var/www/html

RUN wget http://wordpress.org/latest.tar.gz
RUN tar xfz latest.tar.gz && mv wordpress/* ./

COPY ./conf/wp-config.php ./wp-config.php
COPY ./conf/wp-config.php /var/www/wp-config.php



# RUN sed -i "s/\/run\/php\/php7.3-fpm.sock/0.0.0.0:9000/g" /etc/php/7.3/fpm/pool.d/www.conf && \
# 	mkdir -p /run/php

# CMD if [ ! -d "/var/www/wordpress" ];then chown -R www-data:www-data /var/www/html;fi \
# 	&& php-fpm7.3 -F

# RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

# RUN php wp-cli.phar --info

# RUN chmod +x wp-cli.phar

# RUN mv wp-cli.phar /usr/local/bin/wp

RUN chown -R www-data:www-data /var/www/html

# RUN sleep 10; wp core install --url="http://localhost" --title="Sample Title" --admin_name=admin --admin_password=admin --admin_email=you@domain.com 

ENTRYPOINT [ "/var/www/starter.sh" ]

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]