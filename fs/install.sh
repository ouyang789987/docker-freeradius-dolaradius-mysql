#!/bin/bash

if [[ -h /etc/freeradius/mods-enabled/sql ]]; then
  exit 0
fi

sed -i "s/allow_vulnerable_openssl.*/allow_vulnerable_openssl = yes/" /etc/freeradius/radiusd.conf
sed -i "s/radius_db = \"radius\".*/#radius_db = \"radius\"/" /etc/freeradius/mods-available/sql
sed -i '0,/md5/{s/md5/mschapv2/}' /etc/freeradius/mods-available/eap

sed -i -e "s/driver =.*/driver = \"rlm_sql_mysql\"/" -e "s/dialect =.*/dialect = \"mysql\"/" /etc/freeradius/mods-available/sql
ln -s /etc/freeradius/mods-available/sql /etc/freeradius/mods-enabled/sql

#echo "sql_mode=ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION">>/etc/mysql/mysql.conf.d/mysqld.cnf

#usermod -d /var/lib/mysql/ mysql && ln -s /var/lib/mysql/mysql.sock /tmp/mysql.sock && chown -R mysql:mysql /var/lib/mysql

bash -c "echo Asia/Shanghai > /etc/timezone"
dpkg-reconfigure -f noninteractive tzdata
