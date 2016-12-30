#!/usr/bin/env bats

@test "some test" {
  run uname -r
  [ "$status" -eq 0 ]
  [ "$output" == "4.4.0-31-generic" ]
}

