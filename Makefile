all: build up

build:
	@sudo grep "^127.0.0.1.*athirion.42.fr$$" /etc/hosts >/dev/null; \
	if [ $$? -eq 1 ]; then \
	sudo sed -i 's/^127.0.0.1.*localhost$$/127.0.0.1       localhost\n127.0.0.1       athirion.42.fr/' /etc/hosts; \
	fi
	
	@if [ ! -d "/home/athirion/data/mariadb" ]; then \
	sudo mkdir -p /home/athirion/data/mariadb; \
	fi
	@if [ ! -d "/home/athirion/data/wordpress" ]; then \
	sudo mkdir -p /home/athirion/data/wordpress; \
	fi
	@docker-compose -f srcs/docker-compose.yml build

up:
	@docker-compose -f srcs/docker-compose.yml up -d

start:
	@docker-compose -f srcs/docker-compose.yml start

stop:
	@docker-compose -f srcs/docker-compose.yml stop

clean:
	@docker-compose -f srcs/docker-compose.yml down -v
	@sudo rm -rf /home/athirion/data/mariadb
	@sudo rm -rf /home/athirion/data/wordpress

fclean: clean
	@docker system prune -af
