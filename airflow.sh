#!/bin/bash

echo $1 $2

AIRFLOW="docker run --rm -ti puckel/docker-airflow airflow"

if [ $1 = 'lsd' ]; then
  $AIRFLOW list_dags

elif [ $1 = 'bash' ]; then
  $AIRFLOW bash

else
  echo "Arg did not match!"
fi
