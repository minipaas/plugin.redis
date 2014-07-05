FROM ubuntu:13.10

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install redis-server

ADD service /etc/minipaas
ENV minipaas_version 1

WORKDIR /srv/data

CMD ["/usr/bin/redis-server", "--dir", "/srv/data"]

EXPOSE 6379
