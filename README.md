Work in Progress. 

# druid-kubernetes
Setup Druid on a Kubernetes Cluster with Helm. 
The Setup of zookeeper and postgres (as metadata storage is handled by subcharts), and therefore zK run with a PetSet in a 3 Node HA.
All Druid Nodes run in their own pods, which are created by deployments. Should be somewhat scaleable
SegmentStore is 

#Run it (currently only tested on minikube)
- checkout repo
- `helm init` (assumes working kubectl, for example with `minikube start`)
- `helm dep update` Pull in deps
- `helm upgrade --debug development druid/ --install`
- Access the pivot UI `minikube service druid-pivot-service` (wait till the cluster is fully run, especially zookeeper takes a while
- Delete the Cluster with `helm delete development --purge ` PersistentStorage from the zK must be deleted manually.



#Assorted Notes: 

#Install Mini cube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.12.2/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
#Install kubectl
curl -Lo kubectl http://storage.googleapis.com/kubernetes-release/release/v1.3.0/bin/linux/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/

#Completion
brew install bash-completion


#Install Helm-client
brew cask install helm



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


minikube service druid-quickstart-service


#Jenkins
helm install stable/jenkins
minikube service hoping-kitten-jenkins --url
printf $(printf '\%o' `kubectl get secret --namespace default hoping-kitten-jenkins -o jsonpath="{.data.jenkins-admin-password[*]}"`);echo



