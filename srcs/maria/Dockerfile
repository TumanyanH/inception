FROM debian:buster

RUN apt update
RUN apt install mariadb-server -y
# RUN mysql_secure_installation -n

# RUN service mariadb enable
# RUN service mysql start

# RUN usermod -d /var/lib/mysql/ mysql
# RUN service mariadb start

WORKDIR /etc

COPY ./tools/init.sh ./

ARG db_name=wp_base
ARG username=root
ARG password=wp_secret_12345

RUN bash init.sh

# CMD mysqld_safe && tail -f /dev/null

EXPOSE 3306

ENTRYPOINT [ "mysqld" ]