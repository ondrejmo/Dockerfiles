FROM golang:alpine
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>

## https://github.com/jfrazelle/udict
# udict(){
#   docker run -it --rm \
#     ondrejmo/udict "$@"
# }

RUN apk update && apk add git \
  && rm -rf /var/cache/apk/*
RUN go get -u github.com/jfrazelle/udict

ENTRYPOINT [ "udict" ]
