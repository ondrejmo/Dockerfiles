FROM golang:alpine
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>

## https://www.github.com/rakyll/boom
# boom() {
#   docker run -it --rm \
#     ondrejmo/boom "$@"
# }

RUN apk update && apk add git \
  && rm -rf /var/cache/apk/*
RUN go get -u github.com/rakyll/boom

ENTRYPOINT [ "boom" ]
