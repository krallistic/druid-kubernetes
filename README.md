# druid-kubernetes
Setup Druid on a Kubernetes Cluster.

#Install Mini cube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.12.2/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
#Install kubectl
curl -Lo kubectl http://storage.googleapis.com/kubernetes-release/release/v1.3.0/bin/linux/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/


minikube start
eval $(minikube docker-env)

#Deploy in the correct Order, should be better in future Iterations
kubectl create -f local-zk/Deployment.yml 

kubectl create -f metadata-mysql/Deployment.yml 

kubectl create -f coordinator/Deployment.yml 

kubectl create -f overlord/Deployment.yml 

kubectl create -f middleManager/Deployment.yml 

kubectl create -f historical/Deployment.yml 

kubectl create -f broker/Deployment.yml 

kubectl create -f pivot/Deployment.yml 