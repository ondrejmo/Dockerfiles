FROM golang:alpine
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

## https://github.com/jfrazelle/pony
# pony(){
#   docker run -it --rm \
#     -v ~/.gnupg:/root/.gnupg \
#     -v ~/.pony:/root/.pony \
#     ondrejmo/pony "$@"
# }

RUN apk add --no-cache git
RUN go get -u github.com/jfrazelle/pony

VOLUME /root/.gnupg

ENTRYPOINT [ "pony" ]
CMD [ "--help" ]
