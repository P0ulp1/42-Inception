FROM	debian:bullseye

#Updating and installing dependencies
RUN	apt update \
	&& apt upgrade -y \
	&& apt install -y nano wget php php-fpm php-mysql mariadb-client

#Installing Wordpress
RUN	wget https://fr.wordpress.org/wordpress-6.8-fr_FR.tar.gz \
	-P /var/www
RUN	cd /var/www && tar -xzf wordpress-6.8-fr_FR.tar.gz && rm wordpress-6.8-fr_FR.tar.gz
RUN	chown -R root:root /var/www/wordpress

#Configuring PHP-FPM
COPY	conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
