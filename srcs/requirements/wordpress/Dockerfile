FROM	debian:bullseye

#Updating and installing dependencies
RUN	apt update \
	&& apt upgrade -y \
	&& apt install -y nano wget php php-fpm php-mysql mariadb-client less

#Installing Wordpress
RUN	wget https://fr.wordpress.org/wordpress-6.8-fr_FR.tar.gz \
	-P /var/www
RUN	cd /var/www && tar -xzf wordpress-6.8-fr_FR.tar.gz && rm wordpress-6.8-fr_FR.tar.gz
RUN	chown -R root:root /var/www/wordpress

#Configuring PHP-FPM
COPY	conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

#Configuring Wordpress
RUN	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN	chmod +x wp-cli.phar
RUN	mv wp-cli.phar /usr/local/bin/wp
COPY	conf/autoconfig-wp.sh /tmp
RUN	chmod +x /tmp/autoconfig-wp.sh
ENTRYPOINT	["/bin/bash", "/tmp/autoconfig-wp.sh"]

#Launching PHP-FPM?
#RUN	/usr/sbin/php-fpm7.3 -F
