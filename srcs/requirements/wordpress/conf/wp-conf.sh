#!/bin/bash
sleep 10
if [ ! -f /var/www/wordpress/wp-config.php ]; then
	echo "CREATING WORDPRESS INSTALLATION"
	wp config create --allow-root \
			--dbname=$SQL_DATABASE \
			--dbuser=$SQL_USER \
			--dbpass=$SQL_PASSWORD \
			--dbhost=mariadb:3306 --path='/var/www/wordpress'
	wp --allow-root core install --path='/var/www/wordpress'
	wp --allow-root user create --path='/var/www/wordpress'
fi

[ -d /run/php ] || mkdir /run/php
