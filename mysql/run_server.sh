#!/bin/sh

#docker run -d -p 3306:3306 -v /data/mysql:/var/lib/mysql centos:mysql
docker run -d -name mysql -p 3306:3306 centos:mysql
