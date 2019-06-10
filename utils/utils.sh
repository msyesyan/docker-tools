#!/bin/sh

source $DOCKER_TOOLS_HOME/utils/file.sh

stop() {
    echo $1
    if [ $2 = "kill" ]; then
        docker rm -f $1
    else
        docker stop $1
    fi
}