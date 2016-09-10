FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>

## https://github.com/xat/castnow
# castnow(){
#   docker run -it --rm \
#     --net host \
#     -u $(id -u):$(id -g) \
#     -v "$PWD":/stream \
#     -w /stream \
#     ondrejmo/castnow "$@"
# }

RUN apk update && apk add nodejs \
  && rm -rf /var/cache/apk/*
RUN npm install -g castnow \
  && rm -r /root/.npm

WORKDIR /stream
VOLUME /stream

ENTRYPOINT [ "castnow" ]
