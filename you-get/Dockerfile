FROM python:3-alpine

## https://github.com/soimort/you-get
# you-get(){
#   docker run -it --rm \
#     -u $(id -u):$(id -g) \
#     -v "$PWD":/downloads \
#     -w /downloads \
#     ondrejmo/you-get "$@"
# }

RUN apk update && apk add \
  ffmpeg \
  && rm -rf /var/cache/apk/*
RUN pip3 install you-get

RUN mkdir -p /downloads
WORKDIR /downloads
VOLUME /downloads

ENTRYPOINT [ "you-get" ]
