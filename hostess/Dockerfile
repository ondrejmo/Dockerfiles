FROM golang:alpine

## https://github.com/cbednarski/hostess
# hostess(){
#   docker run -it --rm \
#     -v /etc/hosts:/etc/hosts \
#     ondrejmo/hostess "$@"
# }

RUN apk update && apk add git \
  && rm -rf /var/cache/apk/*
RUN go get -u github.com/cbednarski/hostess/cmd/hostess

ENTRYPOINT [ "hostess" ]
