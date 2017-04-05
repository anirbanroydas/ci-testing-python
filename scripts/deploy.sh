#!/bin/bash

DOCKER="docker"
DOCKER_COMPOSE="docker-compose"

echo "CI SERVER : $1"
echo "Deploy Environment: $2"

if [ "$1" = "jenkins" ]; then
    DOCKER="sudo docker"
    DOCKER_COMPOSE="sudo docker-compose"

elif [ "$1" = "travis" ]; then
    DOCKER="docker"
    DOCKER_COMPOSE="docker-compose"
fi

SERVER_COUNT=0
DEPLOY_SUCCESS=1
SERVICE_NAME=identidock

while [ "$DEPLOY_SUCCESS" -gt 0 ];
do
	SERVER_COUNT = SERVER_COUNT + 1

	if [ $SERVER_COUNT -eq $((MANAGER_COUNT+1)) ]; then
		echo "Unable to update service in any of the managers"
		break
	fi

	SERVER="MANAGER_$SERVER_COUNT"
	ssh $SERVER_USER@${!SERVER} $DOCKER service update --image $DOCKER_REPO:$DEPLOY_IDENTIDOCK_IMAGE_TAG $SERVICE_NAME

	DEPLOY_SUCCESS=$(echo $?);	
	echo "DEPLOY SUCCESS : $DEPLOY_SUCCESS"
done