FROM node:alpine
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

## https://github.com/mafintosh/peerflix
# peerflix(){
#   docker run -it --rm \
#     --net host \
#     -u $(id -u):$(id -g) \
#     -v "$PWD":/stream \
#     -w /stream \
#     ondrejmo/peerflix "$@"
# }

RUN npm install -g peerflix \
  && rm -r /root/.npm

WORKDIR /stream
VOLUME /stream

ENTRYPOINT [ "peerflix" ]
CMD [ "--help" ]
