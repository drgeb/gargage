#!/bin/bash

# Sets up for kitchen testing

bundle install
docker build -t amazonlinux:ansible \
  -f tests/fixtures/docker/amazonlinux/Dockerfile \
  tests/fixtures/docker/amazonlinux
