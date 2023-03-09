FROM    debian:buster

RUN     apt update
RUN     apt upgrade
RUN     apt install wget -y
RUN	    apt install vim -y
RUN     apt install php7.3 php-fpm php-mysql mariadb-client -y

RUN     wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www

RUN     cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz

RUN     chown -R root:root /var/www/wordpress

COPY    conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf





