FROM golang:alpine
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>

RUN apk update && apk add git \
  && rm -rf /var/cache/apk/*
RUN go get -u github.com/cbednarski/hostess/cmd/hostess

ENTRYPOINT [ "hostess" ]
