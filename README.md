# ruby-kubernetes
### this demo to create ruby on rails app on kubernetes cluster with the following steps
### build the main docker container
### create local Docker registery
### build drkig image
### tag the image 
### push the image to the local registery
### create config mapping object
### kubernetes services creation
### kubernetes deployments for DBs and web app

# in order to build the environment please follow the below steps:
### setup minikube , docker , kubectl
### clone this repo into the minikube machine "https://github.com/galalelatfawy/ruby-kubernetes.git"
### cd ruby-kubernetes directory
### run this command --> eval $(minikube docker-env)
### run the "all.sh" script "chmod +x all.sh  maybe required"
### to see created pods --> kubectl get pod
### to see created services --> kubectl get svc
### to see created configmap --> kubectl get configmaps
### to get the webapp link --> minikube service drkiq --url

### to unset docker registery again 
#### unset DOCKER_CERT_PATH
#### unset DOCKER_TLS_VERIFY
#### unset DOCKER_HOST