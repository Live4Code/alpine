FROM gliderlabs/alpine:3.1
MAINTAINER Yue Chen <dspfac@gmail.com>

ADD rootfs /

RUN apk-install -t --update \
  logrotate \
  s6@testing && \
  rm -rf /var/cache/apk/* && \
  mkdir -p /etc/logrotate.docker.d

CMD ["bash"]
