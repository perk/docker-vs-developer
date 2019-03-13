#!/bin/bash

docker run --name pg -d postgres

docker export pg -o clean.tgz

docker import clean.tgz clean:latest

docker images | grep -i clean

docker history clean
