FROM golang:alpine

## https://github.com/davecheney/httpstat
# httpstat() {
#   docker run -it --rm \
#     ondrejmo/httpstat "$@"
# }

RUN apk add --no-cache git
RUN go get -u github.com/davecheney/httpstat

ENTRYPOINT [ "httpstat" ]
CMD [ "--help" ]
