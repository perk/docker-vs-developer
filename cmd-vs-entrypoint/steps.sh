#!/bin/bash

docker build --tag bash .
docker build -f Dockerfile.tick --tag tick .

docker run --rm -it bash top
bash top

docker run --rm -it tick top
