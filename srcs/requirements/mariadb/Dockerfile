FROM debian:bullseye

#Dependencies
RUN apt update && apt upgrade -y && apt install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/maria-conf.sh /tmp/maria-conf.sh
RUN chmod +x /tmp/maria-conf.sh
#ENTRYPOINT /tmp/maria-conf.sh
