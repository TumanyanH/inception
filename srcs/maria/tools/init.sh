echo "CREATE DATABASE wp_base;" > import.sql
echo "GRANT ALL PRIVILEGES on wp_base.* TO 'root'@'localhost' IDENTIFIED BY 'wp_admin_12345';" >> import.sql
echo "FLUSH PRIVILEGES;" >> import.sql

/etc/init.d/mysql start
mysql < import.sql

sed -i 's/bind-address = 127.0.0.1/bind-address = 0.0.0.0/' /etc/mysql/my.cnf