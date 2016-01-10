FROM golang:alpine
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN apk update && apk add git \
  && rm -rf /var/cache/apk/*
RUN go get -u github.com/jfrazelle/udict

ENTRYPOINT [ "udict" ]
