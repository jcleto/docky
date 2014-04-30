# MySQL
#
FROM centos:latest
MAINTAINER Joao Cleto	"jcleto@irdeto.com"

# Install EPEL
RUN rpm -Uvh --force http://mirrors.kernel.org/fedora-epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm -Uvh --force http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

RUN yum update -y

RUN yum install -y mysql
RUN yum install -y httpd httpd-devel mod_ssl openssh --enablerepo=remi
RUN yum install -y php php php-cli php-devel php-gd php-mbstring php-gettext \
php-pdo php-pear php-pecl-apc php-xml php-mysql php-tidy php-phpunit-PHPUnit --enablerepo=remi

RUN yum install gcc gcc-c++ autoconf automake mlocate zip unzip gettext

RUN printf "yes" | pecl install stomp

#RUN pear channel-update pear.php.net
#RUN pear channel-discover pear.phpunit.de pear.symfony.com pear.phing.info
#RUN pear install phing/phing

RUN curl -sS https://getcomposer.org/installer | php

#ADD ./conf/irdeto_publish.conf /etc/httpd/conf.d/
#ADD ./conf/irdeto_publish.ini /etc/php.d/
RUN mkdir -p /var/www/src/zip
RUN mkdir -p /var/www/shared/custom/files
RUN mkdir -p /var/www/shared/custom/logs
RUN mkdir -p /var/www/shared/custom/languages

#ADD ./database/ /opt/database/

#ADD ./start_jetty.sh /opt/

EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd"]

CMD ["-D", "FOREGROUND"]
