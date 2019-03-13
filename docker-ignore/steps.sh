#!/bin/bash

docker build --tag ignore .

docker run --rm ignore
