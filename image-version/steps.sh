#!/bin/bash

docker build --tag vs .

docker run vs version

docker run --rm -it --name vs vs
docker exec vs version

docker run --rm --entrypoint version vs
