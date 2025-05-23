FROM	debian:bullseye

#Updating and installing dependencies
RUN	apt update \
	&& apt upgrade -y \
	&& apt install -y nano openssl nginx

#Configuring SSL/TLS
RUN	mkdir -p /etc/nginx/ssl
RUN	openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/0=42/CN=phautena.42.fr/UID=login"

#Configuring NGINX
COPY	conf/nginx.conf /etc/nginx/nginx.conf
RUN	chmod 755 /var/www/html
RUN	chown -R www-data:www-data /var/www/html
RUN	mv /var/www/html/index.nginx-debian.html /var/www/html/index.html
CMD	["nginx", "-g", "daemon off;"]
