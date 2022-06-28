echo "CREATE DATABASE $db_name;" > import.sql
echo "GRANT ALL PRIVILEGES on $db_name.* TO '$username'@'localhost' IDENTIFIED BY '$password';" >> import.sql
echo "FLUSH PRIVILEGES;" >> import.sql

/etc/init.d/mysql start
mysql < import.sql

sed -i 's/bind-address = 127.0.0.1/bind-address = 0.0.0.0/' /etc/mysql/my.cnf