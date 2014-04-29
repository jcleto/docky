# MySQL
#
FROM centos:latest
MAINTAINER Joao Cleto	"jcleto@irdeto.com"

# Install EPEL
RUN rpm -Uvh --force http://mirrors.kernel.org/fedora-epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm -Uvh --force http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

RUN yum update -y

RUN yum install -y mysql-server --enablerepo=remi

RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/my.cnf
ADD ./startup.sh /opt/startup.sh

EXPOSE 3306

CMD ["/bin/bash", "/opt/startup.sh"]
