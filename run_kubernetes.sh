#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID
#dockerpath=""
dockerpath="luqmanbello/flasksklearn"

# Step 2
# Run a Docker Hub container with kubernetes
kubectl run flasksklearn\
    --image="$dockerpath"
    --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to host
kubectl port-forward flasksklearn 8000:80