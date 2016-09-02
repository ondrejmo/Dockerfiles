FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>

## https://github.com/typicode/json-server
# json-server(){
#   docker run -it --rm \
#     --net host \
#     -v `pwd`:/data \
#     -w /data \
#     ondrejmo/json-server "$@"
# }

RUN apk update && apk add nodejs \
  && rm -rf /var/cache/apk/*
RUN npm install -g json-server \
  && rm -r /root/.npm

WORKDIR /data
VOLUME /data

ENTRYPOINT [ "json-server" ]
