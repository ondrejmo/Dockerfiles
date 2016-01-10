FROM node:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

# node-red-node-email node-red-node-twitter
WORKDIR /root/.node-red
RUN npm install -g node-red node-red-admin
RUN npm install node-red-node-redis node-red-node-mongodb node-red-node-sqlite node-red-node-mysql
#node-red-node-exif node-red-node-ping node-red-node-wol node-red-drone node-red-node-random node-red-node-base64 node-red-node-badwords node-red-node-daemon node-red-node-notify node-red-node-irc node-red-node-google node-red-node-aws

EXPOSE 1880

ENTRYPOINT [ "node-red" ]
