FROM alpine:edge
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN apk update && apk add \
  jq \
  jo \
	ca-certificates \
	python \
	py-pip \
	&& rm -rf /var/cache/apk/* \
	&& pip install httpie httpie-unixsocket httpie-oauth httpie-http2 http-prompt

RUN curl -sSL https://raw.githubusercontent.com/holman/spark/master/spark > /usr/local/bin/spark

ENTRYPOINT [ "http-prompt" ]
