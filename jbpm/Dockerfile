# MySQL
#
FROM centos:latest
MAINTAINER Joao Cleto	"jcleto@irdeto.com"

# Install EPEL
RUN rpm -Uvh --force http://mirrors.kernel.org/fedora-epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm -Uvh --force http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

RUN yum update -y

RUN yum install -y mysql
RUN yum install -y java-1.7.0-openjdk-devel --enablerepo=remi

ADD ./jetty9.tar.gz /opt/
RUN mv /opt/jetty-distribution-9.1.4.v20140401/ /opt/jetty

ADD ./database/ /opt/database/
ADD ./jbpm.xml /opt/jetty/webapps/jetty.xml

ADD ./start_jetty.sh /opt/

EXPOSE 8080

CMD ["/bin/bash","/opt/start_jetty.sh"]
