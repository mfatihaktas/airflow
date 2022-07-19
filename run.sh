#!/bin/bash

echo $1 $2


if [ $1 = 'u' ]; then
  docker-compose -f docker_compose.yml up --abort-on-container-exit

elif [ $1 = 'd' ]; then
  docker-compose -f docker_compose.yml down

else
  echo "Arg did not match!"
fi
