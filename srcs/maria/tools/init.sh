echo "CREATE DATABASE $db_name;" > import.sql
echo "GRANT ALL PRIVILEGES on $db_name.* TO '$username'@'localhost' IDENTIFIED BY '$password';" >> import.sql
echo "FLUSH PRIVILEGES;" >> import.sql

/etc/init.d/mysql start
mysql < import.sql