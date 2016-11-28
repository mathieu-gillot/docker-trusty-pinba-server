FROM ubuntu:trusty
MAINTAINER mgillot@optimy.com

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL en_US.UTF-8
ENV LANGUAGE en_US:en

# install dependencies
RUN apt-get install -y --force-yes pinba-engine-mysql-5.5
EXPOSE 30002