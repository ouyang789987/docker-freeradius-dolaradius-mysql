#!/bin/bash

sed -i -e "/client localhost/i client 0.0.0.0/0{\n\tsecret = $RADIUS_KEY\n}" \
  -e "/client localhost/i client ipv6{\n\tipv6addr = ::\n\tsecret = $RADIUS_KEY\n}" \
  -e "s/testing123/$RADIUS_KEY/" /etc/freeradius/clients.conf
sql_driver='mysql'
sed -i "/driver =.*/ a\ \n\tserver = \"$mysql_server\"\n\tlogin = \"$DB_USER\"\n\tpassword = \"$DB_PASS\"\n\tradius_db = \"$DB_NAME\"" /etc/freeradius/mods-available/sql


#radius_certificate=$(redis-cli -h redis.web.svc.cluster.local -p 6379 get radius.pushto.space:latest)
#echo "$radius_certificate" | python3 -c "import sys, json; print(json.load(sys.stdin)['fullchain_pem'])" > /home/fullchain.pem
#echo "$radius_certificate" | python3 -c "import sys, json; print(json.load(sys.stdin)['privkey_pem'])" > /home/privkey.pem



service apache2 start
service mysql start

/usr/sbin/freeradius -f -X
#/bin/bash
