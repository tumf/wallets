FROM ubuntu
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y libssl-dev
RUN apt-get install -y libdb-dev
RUN apt-get install -y libboost-all-dev
RUN apt-get install -y libqrencode-dev
RUN apt-get install -y libdb++-dev
RUN apt-get install -y libqt4-dev libminiupnpc-dev
RUN apt-get install -y git
RUN /usr/sbin/useradd -m guest
EXPOSE 9000

