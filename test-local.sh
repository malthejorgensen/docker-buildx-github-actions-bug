#!/bin/bash

docker buildx build --iidfile tmp/iidfile-1 --metadata-file tmp/metadata-file-1 -t malthe-prod-base -f Dockerfile.base .
docker buildx build --iidfile tmp/iidfile-2 --metadata-file tmp/metadata-file-2 -t malthe-prod -f Dockerfile.prod .
docker run --rm malthe-prod
