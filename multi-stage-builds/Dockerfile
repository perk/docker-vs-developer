FROM ubuntu:xenial as builder

RUN set -x \
  && apt-get update \
  && apt-get upgrade --yes \
  && apt-get install --yes \
       gcc \
       make

RUN echo "Here comes the build command"

FROM alpine:latest
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=builder /bin/ls .
COPY --from=nginx:latest /etc/nginx/nginx.conf .
