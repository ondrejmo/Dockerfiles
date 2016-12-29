FROM node:alpine

## https://github.com/jiahaog/nativefier
# nativefier() {
#   docker run -it --rm \
#     --net host \
#     -u $(id -u):$(id -g) \
#     -v "$PWD"/apps:/apps \
#     -w /apps \
#     ondrejmo/nativefier "$@"
# }

RUN apk update && apk add imagemagick \
  && rm -rf /var/cache/apk/*
RUN npm install -g nativefier \
  && rm -r /root/.npm

WORKDIR /apps
VOLUME /apps

ENTRYPOINT [ "nativefier" ]
