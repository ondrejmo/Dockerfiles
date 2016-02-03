FROM node:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN npm install -g node-red node-red-admin
RUN npm install -g node-red-node-redis node-red-node-mongodb node-red-node-sqlite node-red-node-mysql node-red-contrib-ui
RUN npm install -g node-red-node-email node-red-node-twitter node-red-node-irc
RUN npm install -g node-red-node-ping node-red-node-wol

# node-red-contrib-telegrambot
# node-red-node-instagram
# node-red-node-google
# node-red-node-exif node-red-drone
# node-red-node-random node-red-node-base64 node-red-node-badwords node-red-node-daemon node-red-node-notify node-red-node-aws

RUN apt-get update && apt-get install -y make python gcc

WORKDIR /root/.node-red
VOLUME /root/.node-red

EXPOSE 1880

ENTRYPOINT [ "node-red" ]
