FROM node:alpine
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

## https://github.com/typicode/json-server
# json-server(){
#   docker run -it --rm \
#     --net host \
#     -u $(id -u):$(id -g) \
#     -v "$PWD":/data \
#     -w /data \
#     ondrejmo/json-server "$@"
# }

RUN npm install -g json-server \
  && rm -r /root/.npm

WORKDIR /data
VOLUME /data

ENTRYPOINT [ "json-server" ]
CMD [ "--help" ]
