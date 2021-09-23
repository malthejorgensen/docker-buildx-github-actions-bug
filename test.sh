#!/bin/bash

docker buildx build -t malthe-prod-base -f Dockerfile.base .
docker buildx build -t malthe-prod -f Dockerfile.prod .
docker run --rm malthe-prod
