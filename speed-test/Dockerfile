FROM node:alpine

## https://github.com/sindresorhus/speed-test
# speed-test(){
#   docker run -it --rm \
#     --net host \
#     ondrejmo/speed-test "$@"
# }

RUN npm install -g speed-test \
  && rm -r /root/.npm

ENTRYPOINT [ "speed-test" ]
CMD [ "--help" ]
