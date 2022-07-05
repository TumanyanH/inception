# echo "CREATE DATABASE wp_base;" > import.sql
# echo "GRANT ALL PRIVILEGES on wp_base.* TO 'root'@'localhost' IDENTIFIED BY 'wp_admin_12345';" >> import.sql
# echo "FLUSH PRIVILEGES;" >> import.sql

# /etc/init.d/mysql start
# mysql < import.sql

# sed -i 's/bind-address = 127.0.0.1/bind-address = 0.0.0.0/' /etc/mysql/my.cnf

# echo bind-address = 0.0.0.0 >> /etc/mysql/my.cnf


#!/bin/sh

if [ ! -d "/run/mysqld" ]; then
	mkdir -p /run/mysqld
	chown -R mysql:mysql /run/mysqld
fi

if [ ! -d "/var/lib/mysql/mysql" ]; then
	
	chown -R mysql:mysql /var/lib/mysql

	# init database
	mysql_install_db --basedir=/usr --datadir=/var/lib/mysql --user=mysql --rpm > /dev/null

	tfile=`mktemp`
	if [ ! -f "$tfile" ]; then
		return 1
	fi

	# https://stackoverflow.com/questions/10299148/mysql-error-1045-28000-access-denied-for-user-billlocalhost-using-passw
	cat << EOF > $tfile
USE mysql;
FLUSH PRIVILEGES;
DELETE FROM	mysql.user WHERE User='';
DROP DATABASE test;
DELETE FROM mysql.db WHERE Db='test';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
ALTER USER 'root'@'localhost' IDENTIFIED BY 'wp_secret_12345';
CREATE DATABASE wp_base CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER 'wp_user'@'%' IDENTIFIED by 'wp_secret_12345';
GRANT ALL PRIVILEGES ON wp_base.* TO 'wp_user'@'%';
FLUSH PRIVILEGES;
EOF
	# run init.sql
	/usr/bin/mysqld --user=mysql --bootstrap < $tfile
	rm -f $tfile
fi

# allow remote connections
sed -i "s|skip-networking|# skip-networking|g" /etc/my.cnf.d/mariadb-server.cnf
sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf

exec /usr/bin/mysqld --user=mysql --console