FROM node:alpine
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

## https://github.com/santinic/how2
# how2(){
#   docker run -it --rm \
#     ondrejmo/how2 "$@"
# }

RUN npm install -g how2 \
  && rm -r /root/.npm

ENTRYPOINT [ "how2" ]
CMD [ "--help" ]
