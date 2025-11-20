#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull sudhirsharma/simple-python-flask-app


# Run the Docker image as a container
docker run -d -p 8081:5000 sudhirsharma/simple-python-flask-app


