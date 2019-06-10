run() {
  docker run -it \
    --network host \
    --rm redis \
    redis-cli -h localhost
}

main() {
  run
}

main
