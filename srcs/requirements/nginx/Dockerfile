FROM    debian:buster

RUN     apt update
RUN     apt upgrade
RUN     apt -y install nginx
RUN     apt -y install curl vim
RUN     mkdir -p /etc/nginx/ssl
RUN     apt -y install openssl
RUN     openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/0=42/OU=42/CN=athirion.42.fr/UID=athirion"
RUN     mkdir -p /var/run/nginx

COPY    src/requirements/nginx/conf/nginx.conf /etc/nginx/nginx.conf
