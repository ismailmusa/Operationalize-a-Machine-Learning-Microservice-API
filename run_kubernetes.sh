#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=ismail1998/project-4
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run project-4 --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward project-4 8080:80
