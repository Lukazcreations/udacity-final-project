#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker buildx build --platform=linux/amd64 -t flask-app .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run --platform linux/amd64 --rm -it -p 8000:80 --name flask-app flask-app