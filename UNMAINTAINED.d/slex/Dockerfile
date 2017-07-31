FROM golang:alpine
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

## https://www.github.com/crosbymichael/slex
# slex() {
#   docker run -it --rm \
#     --name slex \
#     --net host \
#     -v ~/.ssh:/root/.ssh \
#     -v ~/.gnupg:/root/.gnupg \
#     -v /etc/hosts:/etc/hosts:ro \
#     ondrejmo/slex "$@"
# }

RUN apk add --no-cache git
RUN go get -u github.com/crosbymichael/slex

VOLUME /root/.ssh
VOLUME /root/.gnupg

ENTRYPOINT [ "slex" ]
CMD [ "--help" ]
