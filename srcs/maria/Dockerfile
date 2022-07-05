FROM alpine:3.13

RUN	apk update && apk upgrade && apk add --no-cache \
        mariadb \
        mariadb-client

WORKDIR /etc

COPY ./tools/init.sh ./

ARG db_name=wp_base
ARG username=root
ARG password=wp_secret_12345

# RUN bash init.sh

# CMD mysqld_safe && tail -f /dev/null

EXPOSE 3306

# ENTRYPOINT [ "service", "mysql", "start" ]
# ENTRYPOINT [ "mysqld" ]
ENTRYPOINT [ "sh", "init.sh" ]
# CMD "service mariadb start"