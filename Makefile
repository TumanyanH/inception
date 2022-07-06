NAME = inception

all: prune start
	
stop:
	@ docker-compose -f srcs/docker-compose.yml down

clean: stop
	@ rm -rf ./srcs/mariadb
	@ rm -rf ./srcs/wordpress

prune: clean
	@ docker system prune -f

start:
	@ mkdir /home/hakob/data/mariadb
	@ mkdir /home/hakob/data/wordpress
	@ echo "127.0.0.1 htumanya.42.fr" >> /etc/hosts
	@ mkdir ./srcs/mariadb
	@ mkdir ./srcs/wordpress
	@ docker-compose -f srcs/docker-compose.yml up --build

.PHONY: stop clean prune start all