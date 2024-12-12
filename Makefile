
DC=docker compose

up:
	mkdir -p /home/idelfag/data/mariadb
	mkdir -p /home/idelfag/data/wordpress
	$(DC) -f ./srcs/docker-compose.yml up -d

down:
	$(DC) -f ./srcs/docker-compose.yml down

fclean:
	$(DC) -f ./srcs/docker-compose.yml down --volumes --rmi all
	sudo rm -rf /home/idelfag/data/mariadb
	sudo rm -rf /home/idelfag/data/wordpress

re: down up

.PHONY : fclean re up down