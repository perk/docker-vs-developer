#!/bin/bash

docker-compose up

docker-compose up -d

docker-compose ps

docker-compose logs

docker-compose up -d --force-recreate

docker-compose build

docker-compose down

docker-compose -p workshop up -d

docker-compose -p workshop down

docker-compose up --scale app=3 -d

docker exec -it docker-compose_postgres_1 cat /etc/hosts

docker run --rm -it ubuntu cat /etc/hosts
