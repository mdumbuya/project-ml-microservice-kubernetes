#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=mdumbuya93/api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run prediction-app-5f65c94ddb-bndpg\ 
    --image==$dockerpath\
    --port==80 --labels= "app=prediction-app-one"
    
# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward prediction-app-5f65c94ddb-bndpg 8000:80