FROM python:3-alpine
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

## https://github.com/soimort/you-get
# you-get(){
#   docker run -it --rm \
#     -u $(id -u):$(id -g) \
#     -v "$PWD":/downloads \
#     -w /downloads \
#     ondrejmo/you-get "$@"
# }

RUN apk add --no-cache ffmpeg
RUN pip3 install you-get

RUN mkdir -p /downloads
WORKDIR /downloads
VOLUME /downloads

ENTRYPOINT [ "you-get" ]
CMD [ "--help" ]
