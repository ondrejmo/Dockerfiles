FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN apk update && apk add \
  wget \
  axel \
  curl \
  ffmpeg \
  python \
  ca-certificates \
  py-pip \
  && rm -rf /var/cache/apk/* \
  && pip install httpie
RUN wget --no-check-certificate https://yt-dl.org/downloads/latest/youtube-dl -O /usr/bin/youtube-dl
RUN chmod +x /usr/bin/youtube-dl

RUN mkdir -p /downloads
WORKDIR /downloads
VOLUME /downloads

ENTRYPOINT [ "youtube-dl" ]
