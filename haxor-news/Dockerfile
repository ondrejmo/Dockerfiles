FROM python:alpine

## https://github.com/donnemartin/haxor-news
# hn(){
#   docker run -it --rm \
#     ondrejmo/haxor-news "$@"
# }

RUN pip install haxor-news

ENTRYPOINT [ "hn" ]
