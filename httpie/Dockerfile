FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN apk update && apk add \
	ca-certificates \
	python \
	py-pip \
	&& rm -rf /var/cache/apk/* \
	&& pip install httpie httpie-unixsocket httpie-oauth httpie-http2

ENTRYPOINT [ "http" ]
