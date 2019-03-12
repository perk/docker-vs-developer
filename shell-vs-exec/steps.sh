#!/bin/bash

docker build -f Dockerfile.exec --tag exec .
docker build -f Dockerfile.shell --tag shell .

docker run --rm -it shell
docker run --rm -it exec

docker run --rm -it shell ps -ef
docker run --rm -it exec ps -ef
