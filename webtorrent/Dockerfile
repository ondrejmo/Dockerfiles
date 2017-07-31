FROM node:alpine
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

## https://github.com/feross/webtorrent
# webtorrent(){
#   docker run -it --rm \
#     --net host \
#     -u $(id -u):$(id -g) \
#     -v "$PWD":/downloads \
#     -w /downloads \
#     ondrejmo/webtorrent "$@"
# }

RUN npm install -g webtorrent-cli \
  && rm -r /root/.npm

WORKDIR /downloads
VOLUME /downloads

ENTRYPOINT [ "webtorrent" ]
CMD [ "--help" ]
