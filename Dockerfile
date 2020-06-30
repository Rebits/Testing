FROM centos:7

COPY ./script.sh ./
COPY ./preloaded-vars.conf ./
RUN yum -y install make gcc policycoreutils-python automake autoconf libtool
RUN yum -y install epel-release yum-utils -y
RUN yum-builddep python34 -y

ENTRYPOINT ./script.sh


