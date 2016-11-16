FROM jkaralus/druid8s-base:latest

# Expose ports:
# - 8081: HTTP (coordinator)
# - 8082: HTTP (broker)
# - 8083: HTTP (historical)
# - 8090: HTTP (overlord)
# - 8091: HTTP (middlemanager)
# - 3306: MySQL
# - 2181 2888 3888: ZooKeeper
# - 8100 8101 8102 8103 8104 : peon ports
EXPOSE 9095

#ADD config.yaml /iap-druid/imply-$IAP_VERSION/conf/pivot/config.yaml


WORKDIR /iap-druid/imply-$IAP_VERSION/
ENTRYPOINT bin/run-pivot conf
#ENTRYPOINT /bin/bash
