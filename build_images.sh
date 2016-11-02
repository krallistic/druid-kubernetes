

TAG="latest"
docker build -t jkaralus/druid8s-base:$TAG base
docker build -t jkaralus/druid8s-quickstart:$TAG quickstart
