#!/bin/bash
# Create DB
# mysql -u root -proot -h $CENTOS_PORT_3306_TCP_ADDR < echo "DROP DATABASE mediamanager;"
mysql -u root -proot -h $CENTOS_PORT_3306_TCP_ADDR < echo "CREATE DATABASE mediamanager CHARACTER SET utf8 COLLATE utf8_general_ci;"
mysql -u root -proot -h $CENTOS_PORT_3306_TCP_ADDR < /opt/database/mysql.sql


