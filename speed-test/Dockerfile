FROM node:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN npm install -g speed-test

ENTRYPOINT [ "speed-test" ]
