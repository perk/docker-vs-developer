FROM ubuntu:latest

RUN set -x \
  && apt-get update \
  && apt-get install --yes \
       netcat

ENTRYPOINT nc -l -p 1234
