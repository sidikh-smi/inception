#!/bin/bash

sleep 10

mkdir -p /var/wwww
mkdir -p /var/wwww/wordpress

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar  /usr/local/bin/wp

cd /var/wwww/wordpress

wp core download --allow-root

sleep 5

wp config create --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=mariadb --allow-root

wp core install --url=$DOMAINE_NAME --title="Inception" --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root 

wp user create $WP_USER $WP_USER_EMAIL --role=author --user_pass=$WP_USER_PWD --allow-root 

mkdir -p /run/php

exec /usr/sbin/php-fpm7.4 -F