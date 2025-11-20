#!/bin/bash
#set -e

# Pull the Docker image from Docker Hub
#docker pull sudhirsharma/simple-python-flask-app


# Run the Docker image as a container
#docker run -d -p 8081:5000 sudhirsharma/simple-python-flask-app
#!/bin/bash
set -e

IMAGE_NAME="sudhirsharma/simple-python-flask-app"

echo "Stopping any running containers using image: $IMAGE_NAME"
docker ps -q --filter "ancestor=$IMAGE_NAME" | while read container_id; do
    echo "Stopping container $container_id"
    docker stop $container_id
    docker rm $container_id
done

echo "Pulling latest image..."
docker pull $IMAGE_NAME:latest

echo "Running new container..."
docker run -d -p 8081:5000 $IMAGE_NAME:latest

echo "Deployment complete!"
