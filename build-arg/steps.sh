#!/bin/bash

docker build --tag foo:bar .

docker build --build-arg foo=baz --tag foo:baz .

docker history foo:bar

docker history foo:baz

docker run --rm -it foo:bar env

docker run --rm -it foo:baz env
