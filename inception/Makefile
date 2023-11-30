
all:
		docker-compose -f ./srcs/docker-compose.yml  up 
down:
		docker-compose -f ./srcs/docker-compose.yml down
clean:
		docker system prune -a
clear_vol:
		sudo rm -rf /home/skhaliff/data/mariadb/*
		sudo rm -rf /home/skhaliff/data/wordpress/*