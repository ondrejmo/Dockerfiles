FROM golang:alpine

## https://github.com/jfrazelle/udict
# udict(){
#   docker run -it --rm \
#     ondrejmo/udict "$@"
# }

RUN apk update && apk add git \
  && rm -rf /var/cache/apk/*
RUN go get -u github.com/jfrazelle/udict

ENTRYPOINT [ "udict" ]
