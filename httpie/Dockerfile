FROM python:alpine

## https://github.com/jkbrzt/httpie
# http(){
# 	docker run -it --rm \
#     --net host \
#     -v /var/run/docker.sock:/var/run/docker.sock \
#     -u $(id -u):$(id -g) \
#     -v "$PWD":/downloads \
#     -w /downloads  \
#     ondrejmo/httpie "$@"
# }

RUN apk update && apk add \
	ca-certificates \
	&& rm -rf /var/cache/apk/*
RUN pip install httpie httpie-unixsocket httpie-oauth httpie-http2

ENTRYPOINT [ "http" ]
