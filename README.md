# docker-freeradius-dolaradius-mysql
freeradius 需要指明端口类型
docker run --name freeradius-oyqg -p 8090:80 -p 1812:1812/udp -p 1813:1813/udp -p 3306:3306 oyqg/freeradius