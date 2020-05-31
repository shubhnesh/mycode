FROM centos:latest


MAINTAINER NewstarCorporation

RUN yum  install httpd -y
COPY /devops/code.html /var/www/html/

CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
