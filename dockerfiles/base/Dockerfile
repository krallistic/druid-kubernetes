FROM ubuntu:16.04

MAINTAINER Jakob K. jakob.karalus@gmx.net

ENV DRUID_VERSION 0.7.1.1
ENV IAP_VERSION 2.0.0

RUN apt-get update && apt-get install -y wget
RUN wget -q -O - https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get update && apt-get install -y openjdk-8-jre nodejs
RUN apt-get install -y libthreads-perl libc6 perl perl-doc python

RUN mkdir /iap-druid
RUN wget -q -O - https://static.imply.io/release/imply-$IAP_VERSION.tar.gz | tar -xzf - -C /iap-druid/
WORKDIR /iap-druid/imply-$IAP_VERSION/

#ADD common.runtime.properties /iap-druid/imply-$IAP_VERSION/conf/druid/_common/common.runtime.properties
ADD run-druid /iap-druid/imply-$IAP_VERSION/bin/run-druid


ENTRYPOINT bash
