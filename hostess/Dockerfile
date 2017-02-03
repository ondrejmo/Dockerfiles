FROM golang:alpine

## https://github.com/cbednarski/hostess
# hostess(){
#   docker run -it --rm \
#     -v /etc/hosts:/etc/hosts \
#     ondrejmo/hostess "$@"
# }

RUN apk add --no-cache git
RUN go get -u github.com/cbednarski/hostess/cmd/hostess

ENTRYPOINT [ "hostess" ]
CMD [ "--help" ]
