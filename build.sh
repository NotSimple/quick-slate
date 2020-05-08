#!/usr/bin/env bash

set -o errexit

root=`pwd`/`dirname $0`
cd $root

source ./config

if [ ! "$(docker ps -q -f name=${docker_container_name})" ]; then
    if [ "$(docker ps -aq -f status=exited -f name=${docker_container_name})" ]; then
        perform_container_clean
    fi
    perform_start
    perform_build
    perform_stop
    perform_container_clean
else 
  # Server already running
  perform_build
fi
