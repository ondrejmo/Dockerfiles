FROM alpine:latest
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>

## https://github.com/santinic/how2
# how2(){
#   docker run -it --rm \
#     ondrejmo/how2 "$@"
# }

RUN apk update && apk add nodejs \
  && rm -rf /var/cache/apk/*
RUN npm install -g how2 \
  && rm -r /root/.npm

ENTRYPOINT [ "how2" ]
