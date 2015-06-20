FROM gliderlabs/alpine:edge
MAINTAINER Yue Chen <dspfac@gmail.com>

ADD rootfs /

RUN apk-install -t \
  logrotate \
  s6@testing  && \
  rm -rf /var/cache/apk/* && \
  mkdir -p /etc/logrotate.docker.d

CMD ["bash"]
