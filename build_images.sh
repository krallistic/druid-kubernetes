

TAG="latest"
docker build -t jkaralus/druid8s-base:$TAG base
docker build -t jkaralus/druid8s-quickstart:$TAG quickstart
docker build -t jkaralus/druid8s-local-zk:$TAG local-zk
