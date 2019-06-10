#!/bin/bash

source $DOCKER_TOOLS_HOME/env.sh
source $DOCKER_TOOLS_HOME/utils/utils.sh

run() {
    docker run \
        --name $SERVICE_REDIS \
        --restart=on-failure \
        -p 6379:6379 \
        -d redis
}

main() {
    run
}

main