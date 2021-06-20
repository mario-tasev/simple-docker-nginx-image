FROM centos
LABEL maintainer="Mario Tasev"
RUN yum update -y
RUN yum install httpd -y
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
COPY index.html /var/www/html/
