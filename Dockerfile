FROM debian:wheezy
MAINTAINER mgillot@optimy.com

ENV DEBIAN_FRONTEND noninteractive RUN apt-get upgrade -y
RUN echo "deb http://packages.dotdeb.org wheezy all" | tee -a /etc/apt/sources.list
RUN echo "deb-src http://packages.dotdeb.org wheezy all" | tee -a /etc/apt/sources.list
RUN gpg --keyserver keys.gnupg.net --recv-key 89DF5277
RUN gpg -a --export 89DF5277 | sudo apt-key add -
RUN apt-get update

RUN apt-get install pinba-mysql-5.5