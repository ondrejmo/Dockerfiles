FROM alpine:latest
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

LABEL caddy_version="0.9" hugo_version="0.16" architecture="amd64"

RUN apk update && apk add \
	openssh-client \
	git \
	tar \
  curl \
  && rm -rf /var/cache/apk/*

ENV HUGO_VERSION=0.16
RUN curl -sSL --fail --header "Accept: application/tar+gzip, application/x-gzip, application/octet-stream" -o - \
  "https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-64bit.tgz" \
  | tar --no-same-owner -C /usr/bin/ "./hugo" -xz && \
  chmod 0777 /usr/bin/hugo

ENV CADDY_VERSION=0.9
RUN curl -sSL --fail --header "Accept: application/tar+gzip, application/x-gzip, application/octet-stream" -o - \
  "https://caddyserver.com/download/build?os=linux&arch=amd64&features=filemanager%2Cgit%2Chugo%2Cipfilter%2Cjwt%2Clocale%2Cmailout%2Cminify%2Cprometheus%2Cratelimit%2Crealip%2Csearch" \
  | tar --no-same-owner -C /usr/bin/ -xz "caddy" && \
  chmod 0777 /usr/bin/caddy

ADD GeoLite2-Country.mmdb /var/lib/caddy/

RUN apk del \
  curl \
  tar \
  && rm -rf /var/cache/apk/*

EXPOSE 80 443
# 1313 2015
VOLUME /var/www
WORKDIR /var/www

ENTRYPOINT [ "/usr/bin/caddy" ]
