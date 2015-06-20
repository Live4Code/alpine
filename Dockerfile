FROM gliderlabs/alpine:edge
MAINTAINER Yue Chen <dspfac@gmail.com>

ADD rootfs /

RUN apk-install -t --update \
  logrotate \
  s6  && \
  rm -rf /var/cache/apk/* && \
  mkdir -p /etc/logrotate.docker.d

CMD ["bash"]
