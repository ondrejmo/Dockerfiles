FROM node:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN npm install -g json-server

WORKDIR /data
VOLUME /data

ENTRYPOINT [ "json-server" ]
