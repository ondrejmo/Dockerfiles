FROM node:alpine

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
