FROM node:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN npm install -g hackmyresume

## Install themes
# npm install jsonresume-theme-[theme-name]

WORKDIR /data
VOLUME /data

ENTRYPOINT [ "hackmyresume" ]
