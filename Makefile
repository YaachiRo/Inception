
DC=docker compose

up:
	mkdir -p data/mariadb
	mkdir -p data/wordpress
	$(DC) -f ./srcs/docker-compose.yml up -d

down:
	$(DC) -f ./srcs/docker-compose.yml down

fclean:
	$(DC) -f ./srcs/docker-compose.yml down --volumes --rmi all
	sudo rm -rf ./data/mariadb
	sudo rm -rf ./data/wordpress

re: down up

.PHONY : fclean re up down