#!/bin/bash

# A utility script to run unit tests. Shall be used as a template/reminder.

echo "arg= ${1}"


DOCKER_IMAGE="metrics_api_dev"


if [ $1 = "run" ]; then
  docker run -it ${DOCKER_IMAGE} bash

elif [ $1 = "ls" ]; then
  docker container list

elif [ $1 = "bash" ]; then
  CONTAINER_ID=$2
  [ -z "${CONTAINER_ID}" ] && { echo "CONTAINER_ID should be given with arg-2"; exit 1; }
  docker exec -it ${CONTAINER_ID} bash

elif [ $1 = 'prune' ]; then
  docker system prune --all

else
  echo "Unexpected arg= ${1}"
fi
