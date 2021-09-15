FROM centos:centos7
MAINTAINER Michael Vonderbecke <tentimes2@yahoo.com>

# mandatory K8S labels
RUN yum install -y httpd && yum clean all -y && mkdir -p /opt/app-root/src

COPY index.html /opt/app-root/src/

EXPOSE 8080

CMD ["httpd"]
