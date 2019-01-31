FROM centos:centos7


RUN yum update -y && \
      yum install -y gcc-c++

RUN yum update -y && \
      yum install -y git bzip2

RUN yum update -y && \
      yum install -y epel-release && \
      yum install -y python34 python36


WORKDIR /work

COPY modules ./
