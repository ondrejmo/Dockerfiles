FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>

## https://github.com/soimort/you-get
# you-get(){
#   docker run -it --rm \
#     -u $(id -u):$(id -g) \
#     -v `pwd`:/downloads \
#     -w /downloads \
#     ondrejmo/you-get "$@"
# }

RUN apk update && apk add \
  ffmpeg \
  python3 \
  py-pip \
  && rm -rf /var/cache/apk/*
RUN pip3 install you-get

RUN mkdir -p /downloads
WORKDIR /downloads
VOLUME /downloads

ENTRYPOINT [ "you-get" ]
