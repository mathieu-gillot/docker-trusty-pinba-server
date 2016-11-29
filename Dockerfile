FROM tony2001/pinba
MAINTAINER mgillot@optimy.com

RUN apt-get update
RUN apt-get install -yq mysql-client tcpdump

RUN echo "alias pinba='mysql -u root -h 127.0.0.1 -D pinba'" | tee -a /root/.bashrc