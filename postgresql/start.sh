#!/bin/bash

source ../env.sh
source ../utils/utils.sh

echo "env"
echo $DOCKER_TOOLS_HOME

PG_TOOLS_HOME=$DOCKER_TOOLS_HOME/postgresql

prepare() {
    mkdir_unless_exist "${PG_TOOLS_HOME}/pgdata"
    mkdir_unless_exist "${PG_TOOLS_HOME}/bk"
}

run() {
    docker run \
        --name $TOOLS_PG \
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