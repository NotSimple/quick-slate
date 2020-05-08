#!/usr/bin/env bash

set -o errexit

root=`pwd`/`dirname $0`
cd $root

source ./config
output_info="Access your docs at http://localhost:4567/
You can update the slate source and refresh the webpage to view the change"

# run only if not running already
if [ ! "$(docker ps -q -f name=${docker_container_name})" ]; then
    if [ "$(docker ps -aq -f status=exited -f name=${docker_container_name})" ]; then
        docker rm ${docker_container_name}
    fi
    docker run -p 4567:4567 -v $root/${slate_source_path}:/slate/source \
     -v $root/${slate_build_path}:/slate/build \
     -d --name ${docker_container_name} ${docker_image}
    echo "Starting local slate docs server..."
    sleep 5 # wait for server start
    echo "$output_info" 

else 
  echo "Server already running!"
  echo "$output_info"
fi
