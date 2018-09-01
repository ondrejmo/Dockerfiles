FROM python:alpine

## https://github.com/jsvine/waybackpack
# waybackpack(){
# 	docker run -it --rm \
#     -v "$PWD":/downloads \
#     -w /downloads  \
#     ondrejmo/waybackpack"$@"
# }

RUN pip install waybackpack

ENTRYPOINT [ "waybackpack" ]
CMD [ "--help" ]
