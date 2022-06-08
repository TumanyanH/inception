FROM debian:buster

RUN apt-get update
RUN apt-get install nginx openssl -y

WORKDIR /etc/nginx/sites-available/

COPY ./nginx.conf /etc/nginx/sites-available/nginx.conf
RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt  -subj "/C=RU/ST=Kazan/L=Kazan/O=21/OU=21School/CN=localhost"

RUN service nginx start

EXPOSE 443
