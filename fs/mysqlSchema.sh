#!/bin/bash

echo "sql_mode=ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION">>/etc/mysql/mysql.conf.d/mysqld.cnf

usermod -d /var/lib/mysql/ mysql && ln -s /var/lib/mysql/mysql.sock /tmp/mysql.sock && chown -R mysql:mysql /var/lib/mysql

service mysql start
echo "create database radius" >/tmp/database
mysql -u root --password=${DB_PASS} < /tmp/database
mysql -D radius -u root --password=${DB_PASS} < /opt/radiusdata.sql
echo "GRANT ALL ON radius.* TO 'radius'@'localhost' IDENTIFIED BY '${DB_PASS}' WITH GRANT OPTION;" >/tmp/grant
mysql -u root --password=${DB_PASS} < /tmp/grant
