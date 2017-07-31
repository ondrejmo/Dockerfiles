FROM node:alpine
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

## https://github.com/jiahaog/nativefier
# nativefier() {
#   docker run -it --rm \
#     --net host \
#     -u $(id -u):$(id -g) \
#     -v "$PWD"/apps:/apps \
#     -w /apps \
#     ondrejmo/nativefier "$@"
# }

RUN apk add --no-cache imagemagick
RUN npm install -g nativefier \
  && rm -r /root/.npm

WORKDIR /apps
VOLUME /apps

ENTRYPOINT [ "nativefier" ]
CMD [ "--help" ]
