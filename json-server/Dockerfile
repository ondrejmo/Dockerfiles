FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN apk update && apk add nodejs \
  && rm -rf /var/cache/apk/*
RUN npm install -g json-server
RUN rm -r /root/.npm

WORKDIR /data
VOLUME /data

ENTRYPOINT [ "json-server" ]
