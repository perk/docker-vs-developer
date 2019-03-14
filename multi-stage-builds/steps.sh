#!/bin/bash

docker build --tag multi-stage-builds .

docker run --rm -it multi-stage-builds ls -al /root

docker run --rm -it multi-stage-builds ldd /root/ls
