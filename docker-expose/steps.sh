#!/bin/bash

docker build . --tag expose

docker run -d -P expose
docker ps -a -l
telnet localhost 312712...

docker run -d -p 1234 expose
docker ps -a -l
telnet 127.0.1.1 13123..

docker run -d -p 1234/tcp -p 1234/udp expose
docker ps -a -l

docker run -d -p 1111:1234 expose
telnet 127.0.1.1 1111
telnet 127.0.0.1 1111

docker run -d -p 127.0.0.1:1234:1234 expose
telnet 127.0.1.1 1234
telnet 127.0.0.1 1234
