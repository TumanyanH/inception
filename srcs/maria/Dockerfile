FROM debian:buster

RUN apt update
RUN apt install mariadb-server -y

WORKDIR /etc

COPY ./tools/init.sh ./

ARG db_name=wp_base
ARG username=root
ARG password=wp_secret_12345

RUN bash init.sh

# CMD mysqld_safe && tail -f /dev/null

EXPOSE 3306

ENTRYPOINT [ "mysqld" ]