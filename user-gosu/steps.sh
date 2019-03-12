#!/bin/bash

docker run -it --rm nginx

docker top nginx

docker run --name ubuntu -d ubuntu bash -c "while true; do echo ping; sleep 1; done"

docker run --name ubuntu-2 -u 1002 -d ubuntu bash -c "while true; do echo ping; sleep 1; done"

docker run -u 1000 postgres
