FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>

## https://github.com/jsvine/waybackpack
# waybackpack(){
# 	docker run -it --rm \
#     -v $(pwd):/downloads \
#     -w /downloads  \
#     ondrejmo/waybackpack"$@"
# }

RUN apk update && apk add \
	python \
	py-pip \
	&& rm -rf /var/cache/apk/*
RUN pip install waybackpack

ENTRYPOINT [ "waybackpack" ]
