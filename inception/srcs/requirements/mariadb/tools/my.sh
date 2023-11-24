
#!/bin/bash

service mariadb start

sleep 1
#create our table of database
SQL_DATABASE="myDatabase"
SQL_USER="mysql"
SQL_PASSWORD="1234"
SQL_ROOT_PASSWORD="1337BG"

mariadb -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
mariadb -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
mariadb -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
mariadb -e "FLUSH PRIVILEGES;"
# mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown
service mariadb stop

sleep 2
exec mariadbd