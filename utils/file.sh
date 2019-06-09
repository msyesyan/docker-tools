#!/bin/bash

mkdir_unless_exist () {
  folder=$1

  if [ ! -d folder ]; then
    echo "mkdir for ${folder}"
    mkdir -p $folder
  fi
}