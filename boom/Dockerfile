FROM golang:alpine
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

## https://www.github.com/rakyll/boom
# boom() {
#   docker run -it --rm \
#     ondrejmo/boom "$@"
# }

RUN apk add --no-cache git
RUN go get -u github.com/rakyll/boom

ENTRYPOINT [ "boom" ]
CMD [ "--help" ]
