FROM alpine:3.13

RUN	apk update && apk upgrade && apk add --no-cache \
        mariadb \
        mariadb-client

WORKDIR /etc

COPY ./tools/init.sh ./

# RUN bash init.sh

# CMD mysqld_safe && tail -f /dev/null

EXPOSE 3306

# ENTRYPOINT [ "service", "mysql", "start" ]
# ENTRYPOINT [ "mysqld" ]
ENTRYPOINT [ "sh", "init.sh" ]
# CMD "service mariadb start"