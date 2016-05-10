FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN apk update && apk add \
	python \
	py-pip \
	&& rm -rf /var/cache/apk/* \
	&& pip install waybackpack
	
ENTRYPOINT [ "waybackpack" ]
