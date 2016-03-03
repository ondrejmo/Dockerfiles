FROM node:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN npm install -g peerflix
RUN npm install -g castnow

WORKDIR /stream
VOLUME /stream

ENTRYPOINT [ "bash" ]
