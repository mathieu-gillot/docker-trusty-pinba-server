FROM debian:wheezy
MAINTAINER mgillot@optimy.com

ENV DEBIAN_FRONTEND noninteractive RUN apt-get upgrade -y
RUN deb http://packages.dotdeb.org wheezy all
RUN deb-src http://packages.dotdeb.org wheezy all
RUN wget https://www.dotdeb.org/dotdeb.gpg
RUN apt-key add dotdeb.gpg
RUN apt-get update

RUN apt-get install pinba-mysql-5.5