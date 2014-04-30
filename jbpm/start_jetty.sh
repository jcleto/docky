#!/bin/bash
# Create DB
echo "create database mediamanager;" | mysql -u root -proot -h $DB_PORT_3306_TCP_ADDR
mysql -u root -proot -h $DB_PORT_3306_TCP_ADDR < /opt/database/create_database_users.sql
mysql -u root -proot -h $DB_PORT_3306_TCP_ADDR < /opt/database/user_create.sql
mysql -u root -proot -h $DB_PORT_3306_TCP_ADDR < /opt/database/hts_create_schema.sql
mysql -u root -proot -h $DB_PORT_3306_TCP_ADDR < /opt/database/jbpm_create_schema.sql

cd /opt/jetty
java -jar start.jar
