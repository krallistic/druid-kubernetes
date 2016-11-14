Work in Progress

# druid-kubernetes
Setup Druid on a Kubernetes Cluster.

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




#Steps for chart
1. Create Druid chart 'helm create druid'
2. Modify Values & Deployment for simple quickstart
3. Make full Cluster with every pod type

4. Add Secret Handling


3. Add requirments with mysql requirement

