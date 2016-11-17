FROM ubuntu:16.04

# Expose ports:
# - 8081: HTTP (coordinator)
# - 8082: HTTP (broker)
# - 8083: HTTP (historical)
# - 8090: HTTP (overlord)
# - 8091: HTTP (middlemanager)
# - 3306: MySQL
# - 2181 2888 3888: ZooKeeper
# - 8100 8101 8102 8103 8104 : peon ports

ENV DRUID_VERSION 0.7.1.1
ENV IAP_VERSION 1.3.0

RUN apt-get update && apt-get install -y wget
RUN wget -q -O - https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get update && apt-get install -y openjdk-8-jre nodejs
RUN apt-get install -y libthreads-perl libc6 perl perl-doc python

RUN mkdir /iap-druid
RUN wget -q -O - https://static.imply.io/release/imply-$IAP_VERSION.tar.gz | tar -xzf - -C /iap-druid/

EXPOSE 8081
EXPOSE 8082
EXPOSE 8083
EXPOSE 8090
EXPOSE 8091
EXPOSE 3306
EXPOSE 2181 2888 3888
EXPOSE 8100 8101 8102 8103 8104
ENV DEBIAN_FRONTEND=noninteractive LANG=en_US.UTF-8 LC_ALL=C.UTF-8 LANGUAGE=en_US.UTF-8



WORKDIR /iap-druid/imply-$IAP_VERSION/
ENTRYPOINT cd /iap-druid/imply-$IAP_VERSION/ && bin/supervise -c conf/supervise/quickstart.conf
