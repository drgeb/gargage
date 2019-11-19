#!/bin/bash

DOCKER_CONTAINER_NAME="ansible-test"

docker build -t myubuntu .

docker run -ti --privileged --name $DOCKER_CONTAINER_NAME -d -p 5000:22 myubuntu

ansible-playbook -i env/local_docker --become-method=su main.yml

docker stop $DOCKER_CONTAINER_NAME

docker rm $DOCKER_CONTAINER_NAME
