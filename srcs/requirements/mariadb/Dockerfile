FROM		debian:buster

RUN		    apt update
RUN		    apt upgrade
RUN		    apt install mariadb-server -y
RUN		    apt install vim -y

COPY		conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY		tools/mysql.sh .

RUN		    chmod +x ./mysql.sh

ENTRYPOINT	["./mysql.sh"]
