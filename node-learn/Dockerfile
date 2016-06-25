FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD workshops-list.txt /workshops-list.txt

RUN apk update && apk add nodejs \
  && rm -rf /var/cache/apk/*
RUN npm install -g javascripting
RUN npm install -g learnyounode
RUN npm install -g learnyoumongo
RUN npm install -g how-to-npm
RUN npm install -g stream-adventure
RUN npm install -g functional-javascript-workshop
RUN npm install -g expressworks
RUN rm -r /root/.npm

ENTRYPOINT [ "bash" ]
