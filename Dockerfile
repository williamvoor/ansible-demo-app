FROM centos:7
MAINTAINER William Voorsluys - williamvoor@gmail.com

RUN yum -y update
RUN yum -y install java-1.7.0-openjdk epel-release 
RUN yum -y install ansible 

RUN mkdir deployment
COPY deployment /deployment/

WORKDIR /deployment

EXPOSE 80 443

ENTRYPOINT ["./initscript.sh"]
