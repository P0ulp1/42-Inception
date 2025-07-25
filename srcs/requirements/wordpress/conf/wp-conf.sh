#!/bin/bash
sleep 10
if [ ! -f /var/www/wordpress/wp-config.php ]; then
	wp config create --allow-root \
			--dbname=$SQL_DATABASE \
			--dbuser=$SQL_USER \
			--dbpass=$SQL_PASSWORD \
			--dbhost=mariadb:3306 --path='/var/www/wordpress'
	wp --allow-root core install --url=localhost --title=inception --admin_user=$WP_ADMIN --admin_email=phautena@student.42.fr --path='/var/www/wordpress'
	wp --allow-root user update $WP_ADMIN --user_pass=$WP_APASS --path='/var/www/wordpress'
fi
[ -d /run/php ] || mkdir /run/php
