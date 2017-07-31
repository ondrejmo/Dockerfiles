FROM golang:alpine
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

## https://github.com/jfrazelle/udict
# udict(){
#   docker run -it --rm \
#     ondrejmo/udict "$@"
# }

RUN apk add --no-cache git
RUN go get -u github.com/jfrazelle/udict

ENTRYPOINT [ "udict" ]
CMD [ "--help" ]
