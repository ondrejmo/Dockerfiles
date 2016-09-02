FROM golang:alpine
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>

## https://github.com/tsenart/vegeta
# vegeta() {
#   docker run -it --rm \
#     ondrejmo/vegeta "$@"
# }

RUN apk update && apk add git \
  && rm -rf /var/cache/apk/*
RUN go get -u github.com/tsenart/vegeta

ENTRYPOINT [ "vegeta" ]
