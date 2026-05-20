#!/bin/bash

IMAGE_NAME=the-missing-manual-image
CONTAINER_NAME=the-missing-manual-container

docker build -t $IMAGE_NAME .

docker stop $CONTAINER_NAME 2>/dev/null
docker rm $CONTAINER_NAME 2>/dev/null

docker run -d \
    --name $CONTAINER_NAME \
    -p 8888:80 \
    $IMAGE_NAME


echo "Website beschikbaar op:"
echo "http://localhost:8888/"
