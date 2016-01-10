FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN apk update && apk add \
  ffmpeg \
  python3 \
  py-pip \
  && rm -rf /var/cache/apk/* \
  && pip3 install you-get

RUN mkdir -p /downloads
WORKDIR /downloads
VOLUME /downloads

ENTRYPOINT [ "you-get" ]
