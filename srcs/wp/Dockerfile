FROM debian:buster

RUN apt-get update
RUN apt install wget php-fpm -y

WORKDIR /var/www/html

RUN wget http://wordpress.org/latest.tar.gz
RUN tar xfz latest.tar.gz && mv wordpress/* ./


