FROM debian:wheezy
MAINTAINER mgillot@optimy.com

ENV DEBIAN_FRONTEND noninteractive RUN apt-get upgrade -y
RUN wget -qO - http://www.dotdeb.org/dotdeb.gpg | apt-key add -
ADD dotdeb.list /etc/apt/sources.list.d/doteb.list
RUN apt-get clean
RUN apt-get update

RUN apt-get install pinba-mysql-5.5