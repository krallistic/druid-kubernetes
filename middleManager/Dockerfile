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
EXPOSE 8081
EXPOSE 8082
EXPOSE 8083
EXPOSE 8090
EXPOSE 8091
EXPOSE 3306
EXPOSE 2181 2888 3888
EXPOSE 8100 8101 8102 8103 8104
#TODO expose only Ports needed.

WORKDIR /iap-druid/imply-$IAP_VERSION/
ENTRYPOINT cd /iap-druid/imply-$IAP_VERSION/ && bin/run-druid middleManager conf
