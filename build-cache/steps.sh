#!/bin/bash

docker build .

docker build .

docker build --no-cache .

docker build --build-arg cache=$(date +%s) -f Dockerfile.cache-invalid .
