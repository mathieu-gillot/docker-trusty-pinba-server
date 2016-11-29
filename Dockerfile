FROM tony2001/pinba
MAINTAINER mgillot@optimy.com

RUN apt-get update
RUN apt-get install -yq mysql-client tcpdump