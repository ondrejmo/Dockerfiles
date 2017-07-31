FROM node:alpine
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

RUN apk update && apk add git \
  && rm -rf /var/cache/apk/*
RUN npm install -g yo generator-hubot \
  && rm -r /root/.npm
RUN chmod g+rwx /root /root/.config /root/.config/configstore /hubot /root/.npm

RUN mkdir myhubot
WORKDIR myhubot
RUN yo hubot
# --owner="Bot Wrangler <bw@example.com>"	Bot owner, e.g. "Bot Wrangler bw@example.com"
# --name="Hubot"	Bot name, e.g. "Hubot"
# --description="Delightfully aware robutt"	Bot description, e.g. "Delightfully aware robutt"
# --adapter=campfire	Bot adapter, e.g. "campfire"
# --defaults	Declare all defaults are set and no prompting required

RUN git init && RUN git add . && git commit -m "Initial commit"

ENTRYPOINT [ "hubot" ]
