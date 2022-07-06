NAME = inception

all: prune start
	
stop:
	@ docker-compose -f srcs/docker-compose.yml down

clean: stop
	@ rm -rf /home/hakob/data/mariadb
	@ rm -rf /home/hakob/data/wordpress

prune: clean
	@ docker system prune -f

start:
	@ mkdir -p /home/hakob/data/mariadb
	@ mkdir -p /home/hakob/data/wordpress
	@ echo "127.0.0.1 htumanya.42.fr" >> /etc/hosts
	# @ mkdir ./srcs/mariadb
	# @ mkdir ./srcs/wordpress
	@ docker-compose -f srcs/docker-compose.yml up --build

.PHONY: stop clean prune start all