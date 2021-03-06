FROM ubuntu
MAINTAINER tumf <y.takahara@gmail.com>

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y libssl-dev
RUN apt-get install -y libdb-dev
RUN apt-get install -y libboost-all-dev
RUN apt-get install -y libqrencode-dev
RUN apt-get install -y libdb++-dev
RUN apt-get install -y libqt4-dev libminiupnpc-dev
RUN apt-get install -y git
RUN apt-get install -y wget

# add guest user as operatior.
RUN /usr/sbin/useradd -m guest
WORKDIR /home/guest
RUN mkdir /home/guest/data

EXPOSE 9000
