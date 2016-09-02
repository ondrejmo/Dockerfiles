FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>

## https://github.com/jkbrzt/httpie
# http(){
# 	docker run -it --rm \
#     --net host \
#     -v /var/run/docker.sock:/var/run/docker.sock \
#     -u $(id -u):$(id -g) \
#     -v `pwd`:/downloads \
#     -w /downloads  \
#     ondrejmo/httpie "$@"
# }

RUN apk update && apk add \
	ca-certificates \
	python \
	py-pip \
	&& rm -rf /var/cache/apk/* \
	&& pip install httpie httpie-unixsocket httpie-oauth httpie-http2

ENTRYPOINT [ "http" ]
