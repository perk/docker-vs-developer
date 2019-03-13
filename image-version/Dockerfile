FROM ubuntu:latest

ARG VERSION=123
ENV VERSION ${VERSION}

COPY version.sh /opt/
COPY entrypoint.sh /

RUN ln -s /opt/version.sh /usr/bin/version

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
