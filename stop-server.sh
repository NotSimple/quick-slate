#!/usr/bin/env bash

set -o errexit

root=`pwd`/`dirname $0`
cd $root

source ./config

perform_stop
perform_container_clean
