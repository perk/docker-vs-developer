FROM ubuntu:latest

RUN set -x \
  && apt-get update \
  && apt-get install --yes \
       netcat

COPY . /

ENTRYPOINT ["/non-exec.sh"]
