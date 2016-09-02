FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>

## https://github.com/feross/webtorrent
# webtorrent(){
#   docker run -it --rm \
#     --net host \
#     -v `pwd`:/downloads \
#     -w /downloads \
#     ondrejmo/webtorrent "$@"
# }

RUN apk update && apk add nodejs \
  && rm -rf /var/cache/apk/*
RUN npm install -g webtorrent-cli \
  && rm -r /root/.npm

WORKDIR /downloads
VOLUME /downloads

ENTRYPOINT [ "webtorrent" ]
