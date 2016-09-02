FROM ubuntu:xenial
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>

RUN apt-get update && apt-get install -y \
  ntopng \
	&& apt-get autoclean

ENTRYPOINT [ "ntopng" ]
