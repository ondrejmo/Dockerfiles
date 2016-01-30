FROM golang:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN go get -u github.com/jfrazelle/pony

# ADD .pony /root/.pony
VOLUME /root/.gnupg

ENTRYPOINT [ "pony" ]
