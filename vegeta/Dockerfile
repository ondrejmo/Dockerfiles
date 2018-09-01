FROM golang:alpine

## https://github.com/tsenart/vegeta
# vegeta() {
#   docker run -it --rm \
#     ondrejmo/vegeta "$@"
# }

RUN apk add --no-cache git
RUN go get -u github.com/tsenart/vegeta

ENTRYPOINT [ "vegeta" ]
CMD [ "--help" ]
