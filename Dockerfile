FROM alpine:edge
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ADD rootfs /

RUN apk add --update \
 logrotate \
  s6@testing && \
  rm -rf /var/cache/apk/* && \
  mkdir -p /etc/logrotate.docker.d

CMD ["bash"]
