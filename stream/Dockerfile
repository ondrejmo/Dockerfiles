FROM node:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN npm install -g peerflix
RUN npm install -g castnow

#https://github.com/mafintosh/torrent-mount
#RUN npm install -g torrent-mount

WORKDIR /stream
VOLUME /stream

ENTRYPOINT [ "bash" ]
