sleep 10

if [ ! -f /var/wwww/wordpress/wp-config.php ];

then 
	wp config create --allow-root \
	       --dbname=$SQL_DATABASE \
	       --dbuser=$SQL_USER \
	       --dbpass=$SQL_PASSWORD \
	       --dbhost=mariadb:3306 --path='/var/www/wordpress'

	wp core install --url=$URL_SITE \
		--title=$TITLE_SITE \
		--admin_user=$ADMIN_NAME \
		--admin_password=$ADMIN_PASSWORD \
		--admin_email=$ADMIN_MAIL \
		--path='/var/www/wordpress' \
		--allow-root

	wp user create --allow-root \
		--role=author $USER_NAME $USER_MAIL \
		# --user-login=$USER_NAME \
		# --user-email=$USER_MAIL \
		--user_pass=$USER_PASS \
		--path='/var/www/wordpress'

fi

if [ ! -d /run/php ];

then
	mkdir /run/php;

fi

/usr/sbin/php-fpm7.3 -F
