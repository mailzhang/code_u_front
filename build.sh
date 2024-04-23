#!/bin/bash

# Build the Docker image
docker build -t vue-element-app .

# Run the container from the image
docker run -it -p 80:80 --rm --name vue-element-running vue-element-app
