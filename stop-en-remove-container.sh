#!/bin/bash

CONTAINER_NAME=the-missing-manual-container

docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME

echo "Container gestopt en verwijderd."
