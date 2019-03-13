#!/bin/bash

docker build --tag netcat .

docker run --name netcat -it -d netcat

docker top netcat
docker exec -it netcat ps -ef

ps -ef | grep -i <PID>
