#!/usr/bin/env bats

@test "docker command is available" {
  command -v docker
}
@test "can pull and run containers" {
  sudo docker run hello-world | grep "Hello from Docker!"
}

@test "storage driver is aufs" {
  sudo docker info | grep "Storage Driver: aufs"
}
