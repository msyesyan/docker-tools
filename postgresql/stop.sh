#!/bin/bash

source ../env.sh

KILL=$1

run() {
    if [ $KILL = "kill" ]; then
        docker rm -f $TOOLS_PG
    else
        docker stop $TOOLS_PG
    fi
}

main() {
    run
}

run