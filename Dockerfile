FROM ubuntu:16.04


ENV DB_HOST=localhost
ENV DB_PORT=3306
ENV DB_USER=radius
ENV DB_PASS=oyqgadmin
ENV DB_NAME=radius
ENV RADIUS_KEY=radius
ENV RAD_CLIENTS=10.0.0.0/24
ENV RAD_DEBUG=no
#VOLUME ["/var/lib/mysql","/etc/mysql","/etc/freeradius"]

ADD fs/ /

MAINTAINER ouyangqungang  <179625015@qq.com>

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y vim

RUN apt-get -y install tzdata software-properties-common redis-tools \
    && add-apt-repository ppa:freeradius/stable-3.0 \
    && apt-get update -y \
    && apt-get -y install freeradius freeradius-mysql

RUN apt-get install -y language-pack-en-base && LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php && apt-get update && apt-cache search php5 

RUN apt-get update -y && apt-get upgrade -y && apt-get -y install libmysqlclient20 libpq5 php5.6-common php5.6-gd php-pear php-db libapache2-mod-php5.6 php-mail apache2 php5.6-mysql && \
        mv /etc/apache2/sites-available/000-default.conf.daloradius /etc/apache2/sites-available/000-default.conf && \
        rm -f /etc/apache2/sites-enabled/000-default.conf && \
        ln -s /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-enabled/000-default.conf && \
        cd /var/www/ && tar -zxvf daloradius-0.9-9.tar.gz && mv daloradius-0.9-9 daloradius && \
	mv -f daloradius.conf.php daloradius/library/ && \
	rm -f daloradius-0.9-9.tar.gz && \
	chown www-data.www-data -R daloradius

RUN chmod +x /install.sh && /install.sh && rm /install.sh

RUN     echo "mysql-server mysql-server/root_password password ${DB_PASS}" | debconf-set-selections && \
	echo "mysql-server mysql-server/root_password_again password ${DB_PASS}" | debconf-set-selections && apt-get -y install mysql-server && sh /mysqlSchema.sh



VOLUME ["/var/lib/mysql","/etc/mysql","/etc/freeradius"]

EXPOSE 1812 1813 80 3306

ENTRYPOINT /init.sh
