FROM debian:buster

RUN apt update
RUN apt install mariadb-server -y
# RUN mysql_secure_installation -n

# RUN service mariadb enable
# RUN service mysql start

# RUN usermod -d /var/lib/mysql/ mysql
# RUN service mariadb start

CMD mysqld_safe && tail -f /dev/null

# RUN service mariadb restart