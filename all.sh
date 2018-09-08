#!/bin/bash

# build the main docker container
# create local Docker registery
docker run -d -p 5000:5000 --restart=always --name registry registry:2
# build drkig image
docker build -t drkiq .
# tag the image 
docker tag drkiq localhost:5000/drkiq
# push the image to the local registery
docker push localhost:5000/drkiq

# create config mapping object
kubectl create configmap env-config --from-env-file=yml/env.env



# kubernetes services creation
kubectl create -f yml/postgres-service.yml
sleep 5
kubectl create -f yml/redis-service.yml
sleep 5
kubectl create -f yml/drkiq-service.yml

 sleep 5

# kubernetes deployments for DBs and web app
kubectl create -f yml/postgres-deployment.yml
 sleep 10
kubectl create -f yml/redis-deployment.yml
 sleep 10

kubectl create -f yml/sidekiq-deployment.yml
 sleep 10

kubectl create -f yml/drkiq-deployment.yml

