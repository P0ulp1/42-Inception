FROM	debian:bullseye

#Updating and installing dependencies
RUN	apt update \
	&& apt upgrade -y \
	&& apt install -y mariadb-server

#Configuring MariaDB
COPY	conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY	conf/autoconf-mariadb.sh /tmp
RUN	chmod +x /tmp/autoconf-mariadb.sh
#ENTRYPOINT	["/bin/bash", "/tmp/autoconf-mariadb.sh"]
