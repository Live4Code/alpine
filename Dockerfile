FROM gliderlabs/alpine:edge
MAINTAINER Yue Chen <dspfac@gmail.com>

ADD rootfs /

RUN apk-install -t s6@testing 
RUN apk-install -t \ 
  logrotate && \
  rm -rf /var/cache/apk/* && \
  mkdir -p /etc/logrotate.docker.d

CMD ["sh"]
