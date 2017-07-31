FROM ubuntu:xenial
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

# docker run -d --name ntopng --net host ondrejmo/ntopng -i eth0 --localnetworks 10.210.0.0/16

RUN apt-get update && apt-get install -y \
  ntopng \
	&& apt-get autoclean

ENTRYPOINT [ "ntopng" ]
