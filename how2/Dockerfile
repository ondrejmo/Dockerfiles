FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN apk update && apk add nodejs \
  && rm -rf /var/cache/apk/*
RUN npm install -g how2 \
  && rm -r /root/.npm

ENTRYPOINT [ "how2" ]
