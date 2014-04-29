#!/bin/sh

docker run -d -p 8000:8080 -v /opt/jbpm:/opt/jbpm -v /opt/jetty_logs:/opt/jetty/logs centos:jetty9
