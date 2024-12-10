#!/bin/bash

wp config set DB_NAME $MYSQL_DATABASE --allow-root; 
wp config set DB_USER $MYSQL_USER --allow-root;
wp config set DB_PASSWORD $MYSQL_PASSWORD --allow-root;
wp config set DB_HOST 'mariadb:3306' --allow-root;

wp core install --allow-root \
--url="https://idelfag.42.fr" \
--admin_user=$WP_ADMIN \
--admin_password=$WP_ADMIN_PASSWORD \
--title="Inception" \
--admin_email="idelfag@student.1337.ma";

wp user create --allow-root $WP_USER "test123@gmail.com" --user_pass=$WP_USER_PASSWORD;

wp theme install twentytwentyfive --activate --allow-root

exec $@