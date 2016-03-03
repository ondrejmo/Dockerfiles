FROM node:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN apt-get update && apt-get install -y python wget tar fontconfig

## Install phantomjs
WORKDIR /usr/local/share
RUN wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
RUN tar -xvf phantomjs-2.1.1-linux-x86_64.tar.bz2
RUN rm -rf phantomjs-2.1.1-linux-x86_64.tar.bz2
RUN mv phantomjs-2.1.1-linux-x86_64 phantomjs-2.1.1
RUN ln -s /usr/local/share/phantomjs-2.1.1/ /usr/local/share/phantomjs
RUN ln -s /usr/local/share/phantomjs/bin/phantomjs /usr/local/bin/phantomjs

## Install casperjs
RUN npm install -g casperjs

WORKDIR /app
VOLUME /app

ENTRYPOINT [ "/usr/local/bin/casperjs" ]
