CREATE DATABASE jbpm;
CREATE USER 'jbpm'@'localhost' identified by 'jbpm';
GRANT ALL PRIVILEGES ON jbpm.* TO 'jbpm'@'localhost';
GRANT ALL PRIVILEGES ON publish.* TO 'jbpm'@'localhost';
CREATE USER 'jbpm'@'%' identified by 'jbpm';
GRANT ALL PRIVILEGES ON jbpm.* TO 'jbpm'@'%';
GRANT ALL PRIVILEGES ON publish.* TO 'jbpm'@'%';

CREATE DATABASE user;
CREATE USER 'user'@'localhost' identified by 'user';
GRANT ALL PRIVILEGES ON user.* TO 'user'@'localhost';
create user 'user'@'%' identified by 'user';
grant all on user.* to 'user'@'%';

CREATE DATABASE hts;
CREATE USER 'hts'@'localhost' identified by 'hts';
GRANT ALL PRIVILEGES ON hts.* TO 'hts'@'localhost';
create user 'hts'@'%' identified by 'hts';
grant all on hts.* to 'hts'@'%';
