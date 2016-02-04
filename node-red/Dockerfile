FROM node:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

WORKDIR /root/.node-red
# VOLUME /root/.node-red

RUN npm install -g node-red node-red-admin

RUN apt-get update && apt-get install -y make python gcc

EXPOSE 1880

ENTRYPOINT [ "node-red" ]
