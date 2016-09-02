FROM golang:alpine
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>

## https://github.com/jfrazelle/pony
# pony(){
#   docker run -it --rm \
#     -v ~/.gnupg:/root/.gnupg \
#     -v ~/.pony:/root/.pony \
#     ondrejmo/pony "$@"
# }

RUN apk update && apk add git \
  && rm -rf /var/cache/apk/*
RUN go get -u github.com/jfrazelle/pony

VOLUME /root/.gnupg

ENTRYPOINT [ "pony" ]
