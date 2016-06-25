FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD workshops-list.txt /workshops-list.txt

RUN apk update && apk add nodejs \
  && rm -rf /var/cache/apk/*
RUN npm install -g \
  javascripting \
  learnyounode \
  learnyoumongo \
  how-to-npm \
  stream-adventure \
  functional-javascript-workshop \
  expressworks \
RUN rm -r /root/.npm

ENTRYPOINT [ "bash" ]
