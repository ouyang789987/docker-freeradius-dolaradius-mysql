# docker-freeradius-dolaradius-mysql
freeradius 需要指明端口类型
docker run --name freeradius-oyqg -p 8090:80 -p 1812:1812/udp -p 1813:1813/udp -p 3306:3306 oyqg/freeradius


自己构建的docker freeradius
mysql 5.7 时间字段不能默认为 DEFAULT '0000-00-00 00:00:00'的解决办法

永久修改：可以直接修改my.cnf文件
例如：     vim /etc/my.cnf
在[mysqld]下面添加如下列：
sql_mode=ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION

mysql启动报错【No directory, logging in with HOME=/】

解决步骤如下：
 usermod -d /var/lib/mysql/ mysql#第一步
ln -s /var/lib/mysql/mysql.sock /tmp/mysql.sock#第二步
chown -R mysql:mysql /var/lib/mysql#第三步
#之后重启mysql即可

mysql 5.7 会出现错误Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'userinfo
需要执行以下语句：
set session sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
set global sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';



设置远程访问问题和权限问题，
授权 给 root  所有sql 权限
mysql -u root -p oyqgadmin
mysql> grant all privileges on *.* to root@"%" identified by "oyqgadmin";
Query OK, 0 rows affected (0.00 sec)

mysql> flush privileges;
Query OK, 0 rows affected (0.00 sec)
修改/etc/mysql/mysql.conf.d/mysqld.cnf 
找到bind-address,把127.0.0.1改成0.0.0.0 或注释掉此行
bind-address           = 0.0.0.0

如果mysql启动不了导致docker启动失败，可以进入docker容器后执行
 /etc/init.d/mysql start 手动启动mysql


参考代码
https://blog.csdn.net/fansili/article/details/78664267

radtest aaa aaa 127.0.0.1 0 radius

https://github.com/ouyang789987/docker-freeradius-dolaradius-mysql
需要制定端口类型，默认tcp,如果是UDP需要在后面标明
docker run --name freeradius-oyqg -p 8090:80 -p 1812:1812/udp -p 1813:1813/udp -p 3306:3306 oyqg/freeradius:ok


下面是补充的几个radius表结构

CREATE TABLE `userinfo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(128) DEFAULT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `workphone` varchar(200) DEFAULT NULL,
  `homephone` varchar(200) DEFAULT NULL,
  `mobilephone` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `zip` varchar(200) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `changeuserinfo` varchar(128) DEFAULT NULL,
  `portalloginpassword` varchar(128) DEFAULT '',
  `enableportallogin` int(32) DEFAULT '0',
  `creationdate` datetime DEFAULT '0000-00-00 00:00:00',
  `creationby` varchar(128) DEFAULT NULL,
  `updatedate` datetime DEFAULT '0000-00-00 00:00:00',
  `updateby` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;


CREATE TABLE `wimax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `authdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `spi` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mipkey` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lifetime` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `spi` (`spi`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `cui` (
  `clientipaddress` varchar(15) NOT NULL DEFAULT '',
  `callingstationid` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `cui` varchar(32) NOT NULL DEFAULT '',
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastaccounting` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`username`,`clientipaddress`,`callingstationid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



set session sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
set global sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
