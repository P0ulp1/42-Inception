#!/bin/bash
sleep 10
if [ ! -f /var/www/wordpress/wp-config.php ]; then
wp --allow-root config create --allow-root \
		--dbname=$SQL_DATABASE \
		--dbuser=$SQL_USER	\
		--dbpass=$SQL_PASSWORD	\
		--dbhost=mariadb:3306 --path='/var/www/wordpress'
wp --allow-root core install --url=localhost --title=MyWordpressPage --admin_user=root --admin_password=toor --admin_email=test@example.com --path='/var/www/wordpress'
fi
[ -d /run/php ] || mkdir /run/php
