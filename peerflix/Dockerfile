FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>

## https://github.com/mafintosh/peerflix
# peerflix(){
#   docker run -it --rm \
#     --net host \
#     -u $(id -u):$(id -g) \
#     -v `pwd`:/stream \
#     -w /stream \
#     ondrejmo/peerflix "$@"
# }

RUN apk update && apk add nodejs \
  && rm -rf /var/cache/apk/*
RUN npm install -g peerflix \
  && rm -r /root/.npm

WORKDIR /stream
VOLUME /stream

ENTRYPOINT [ "peerflix" ]
