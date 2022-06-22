source .env

mysql -e "CREATE DATABASE $db_name;"
mysql -e "GRANT ALL PRIVILEGES on $db_name.* TO '$username'@'localhost' IDENTIFIED BY '$password';"
mysql -e "FLUSH PRIVILEGES;"
# mariadb -e "CREATE DATABASE $db_name;"
# mariadb -e "CREATE USER '$username'@'localhost' IDENTIFIED BY '$password';"
# mariadb -e "GRANT ALL PRIVILEGES ON $db_name.* TO '$username'@'$hostname' WITH GRANT OPTION;"
# mariadb -e "UPDATE mysql.user SET plugin='mysql_native_password' WHERE user='$username';"
# mariadb -e "FLUSH PRIVILEGES;"