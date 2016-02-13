FROM node:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN apt-get update && apt-get install -y imagemagick
RUN npm install -g nativefier

WORKDIR /apps
VOLUME /apps

ENTRYPOINT [ "nativefier" ]
