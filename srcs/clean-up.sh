#!/bin.bash

echo "Running docker prune..."
docker system prune -af

echo "Deleting volumes..."
docker volume rm srcs_wordpress
docker volume rm srcs_mariadb

echo "Deleting local volumes..."
rm -rf /home/phautena/data/mariadb
rm -rf /home/phautena/data/wordpress
