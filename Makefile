
DC=docker compose

up:
	mkdir -p data/mariadb
	mkdir -p data/wordpress
	sudo $(DC) -f ./srcs/docker-compose.yml up -d

down:
	sudo $(DC) -f ./srcs/docker-compose.yml down

fclean:
	sudo $(DC) -f ./srcs/docker-compose.yml down --volumes --rmi all
	sudo rm -rf ./data/mariadb
	sudo rm -rf ./data/wordpress

re:
	down up

.PHONY : fclean re up clean_cache build