#!/bin/bash

docker build --tag netcat .

docker run --name non-exec -d netcat nc -l -p 1234
docker run --name exec --entrypoint /exec.sh -d netcat nc -l -p 1234

docker ps -a -n 2

docker exec -it <name here> ps aux

docker top <name here>

sudo strace -p <PID>
