FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
        build-essential \
        make \
        gcc \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/nfsuserver

COPY nfsuserver/ .

RUN make

EXPOSE 10900 10901 10980 10800 10800/udp

CMD sh -c "./nfsuserver & tail -F server.log traffic.log"
