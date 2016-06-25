FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN apk update && apk add nodejs imagemagick \
  && rm -rf /var/cache/apk/*
RUN npm install -g nativefier
RUN rm -r /root/.npm

WORKDIR /apps
VOLUME /apps

ENTRYPOINT [ "nativefier" ]
