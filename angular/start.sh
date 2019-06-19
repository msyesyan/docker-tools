#!/bin/bash

run() {
    docker run --name "angular"  -t -d angular:latest
}

main() {
    run
}

main