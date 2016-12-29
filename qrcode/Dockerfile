FROM python:3-alpine
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>

## https://github.com/sylnsfar/qrcode
# myqr(){
# 	docker run -it --rm \
#     -u $(id -u):$(id -g) \
#     -v "$PWD":/qr \
#     -w /qr  \
#     ondrejmo/qrcode "$@"
# }

RUN pip3 install MyQR

VOLUME /qr
WORKDIR /qr

ENTRYPOINT [ "myqr" ]
