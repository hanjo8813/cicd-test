#!/bin/bash

DOCKER_USERNAME=$1
DOCKER_REPOSITORY=$2
DOCKER_TAG=$3

echo "================== PULL docker image =================="
docker pull $DOCKER_USERNAME/$DOCKER_REPOSITORY:$DOCKER_TAG

echo "================== SERVER DOWN =================="
docker-compose -p compose-prod down

echo "================== SERVER UP   =================="
docker-compose -p compose-prod up -d

echo "================== DELETE unused images  =================="
docker image prune -f