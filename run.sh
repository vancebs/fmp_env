#! /bin/sh

/usr/local/bin/redis-server /usr/local/redis/conf/redis6379.conf
/usr/local/bin/redis-server /usr/local/redis/conf/redis6380.conf
/usr/local/bin/redis-server /usr/local/redis/conf/redis6381.conf
/usr/local/bin/redis-server /usr/local/redis/conf/sentinel26379.conf --sentinel &
/usr/local/bin/redis-server /usr/local/redis/conf/sentinel26479.conf --sentinel &
/usr/local/bin/redis-server /usr/local/redis/conf/sentinel26579.conf --sentinel &
