#!/bin/bash

source $DOCKER_TOOLS_HOME/env.sh
source $DOCKER_TOOLS_HOME/utils/utils.sh

MS_TOOLS_HOME=$DOCKER_TOOLS_HOME/mysql

prepare() {
    mkdir_unless_exist "${MS_TOOLS_HOME}/data"
    mkdir_unless_exist "${MS_TOOLS_HOME}/bk"
}

run() {
    docker run \
        -p 3306:3306 \
        --name $SERVICE_MS \
        --restart=on-failure \
        -v ${MS_TOOLS_HOME}/data:/var/lib/mysql \
        -e MYSQL_ROOT_PASSWORD=123456 \
        -d 10.110.210.252:5001/cambricon/mysql-server:5.7
}

main() {
    prepare
    run
}

main
