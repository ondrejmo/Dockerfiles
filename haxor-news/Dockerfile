FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>

## https://github.com/donnemartin/haxor-news
# hn(){
#   docker run -it --rm \
#     ondrejmo/haxor-news "$@"
# }

RUN apk update && apk add \
  python \
  py-pip \
  && rm -rf /var/cache/apk/* \
  && pip install haxor-news

ENTRYPOINT [ "hn" ]
