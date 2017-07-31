FROM python:alpine
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

## https://github.com/jkbrzt/httpie
# http(){
# 	docker run -it --rm \
#     --net host \
#     -v /var/run/docker.sock:/var/run/docker.sock \
#     -u $(id -u):$(id -g) \
#     -v "$PWD":/downloads \
#     -w /downloads  \
#     ondrejmo/httpie "$@"
# }

RUN apk add --no-cache ca-certificates
RUN pip install httpie httpie-unixsocket httpie-oauth httpie-http2

ENTRYPOINT [ "http" ]
CMD [ "--help" ]
