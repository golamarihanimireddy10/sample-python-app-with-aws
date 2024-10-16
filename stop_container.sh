#!/bin/bash

# Name of the Docker container that needs to be stopped
CONTAINER_NAME="flask_app_container"

# Check if the container is running
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Stopping running container: $CONTAINER_NAME"
    
    # Stop the container
    docker stop $CONTAINER_NAME
    
    # Optionally remove the container if you want to clean up
    docker rm $CONTAINER_NAME
    
    echo "Container $CONTAINER_NAME stopped and removed."
else
    echo "No running container named $CONTAINER_NAME found."
fi
