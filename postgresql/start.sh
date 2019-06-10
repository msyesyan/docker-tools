#!/bin/bash

source $DOCKER_TOOLS_HOME/env.sh
source $DOCKER_TOOLS_HOME/utils/utils.sh

PG_TOOLS_HOME=$DOCKER_TOOLS_HOME/postgresql

prepare() {
    mkdir_unless_exist "${PG_TOOLS_HOME}/pgdata"
    mkdir_unless_exist "${PG_TOOLS_HOME}/bk"
}

run() {
    docker run \
        --name $SERVICE_PG \
        -p 5432:5432 \
        -v pgdata:/var/lib/postgresql/data \
        -v bk:/root/bk \
        -d postgres
}

main() {
    prepare
    run
}

main