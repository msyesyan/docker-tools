#!/bin/bash

source $DOCKER_TOOLS_HOME/env.sh
source $DOCKER_TOOLS_HOME/utils/utils.sh

run() {
    stop $SERVICE_REDIS $1
}

main() {
    run $1
}

main $1