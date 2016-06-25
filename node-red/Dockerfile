FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN apk update && apk add nodejs make python gcc \
  && rm -rf /var/cache/apk/*
RUN npm install -g node-red node-red-admin
RUN rm -r /root/.npm

WORKDIR /root/.node-red
# VOLUME /root/.node-red

EXPOSE 1880

ENTRYPOINT [ "node-red" ]
