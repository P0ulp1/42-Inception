FROM debian:bullseye

#Dependencies
RUN apt update && apt upgrade -y && apt install -y \
				wget php php-fpm php-mysql mariadb-client less

#Installing Wordpress
RUN wget https://fr.wordpress.org/wordpress-6.8.2-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.8.2-fr_FR.tar.gz && rm wordpress-6.8.2-fr_FR.tar.gz
RUN chown -R root:root /var/www/wordpress

#Configure PHP
COPY conf/php-conf /etc/php/7.4/fpm/pool.d/www.conf

#Configuring Wordpress
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY conf/wp-conf.sh /tmp/wp-conf.sh
RUN chmod +x /tmp/wp-conf.sh
RUN cd /tmp
ENTRYPOINT /tmp/wp-conf.sh
#RUN /usr/sbin/php-fpm7.4 -F
