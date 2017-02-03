FROM node:alpine

## https://github.com/Morhaus/dispatch-proxy
# dispatch(){
#   docker run -it --rm \
#     --net host \
#     ondrejmo/dispatch-proxy "$@"
# }

RUN npm install -g dispatch-proxy \
  && rm -r /root/.npm

ENTRYPOINT [ "dispatch" ]
CMD [ "--help" ]
