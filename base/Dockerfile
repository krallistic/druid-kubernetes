FROM ubuntu:16.04

MAINTAINER Jakob K. jakob.karalus@gmx.net

ENV DRUID_VERSION 0.7.1.1
ENV IAP_VERSION 1.3.0

RUN apt-get update && apt-get install -y wget
RUN wget -q -O - https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get update && apt-get install -y openjdk-8-jre nodejs
RUN apt-get install -y libthreads-perl libc6 perl perl-doc python

WORKDIR /iap-druid/imply-$IAP_VERSION/
RUN wget -q -O - https://static.imply.io/release/imply-$IAP_VERSION.tar.gz | tar -xzf - -C /iap-druid/
ENTRYPOINT ll
