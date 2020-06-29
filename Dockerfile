FROM centos:7

COPY ./script.sh ./
RUN yum install make gcc policycoreutils-python automake autoconf libtool
RUN yum install epel-release yum-utils -y
RUN yum-builddep python34 -y

ENTRYPOINT ./script.sh


