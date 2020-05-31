FROM centos:latest


MAINTAINER NewstarCorporation

RUN yum  install httpd -y
COPY /var/lib/jenkins/workspace/sjob/code.html /var/www/html/

CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
