FROM php:alpine
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

## https://github.com/bit3/faker-cli
# faker(){
#   docker run -it --rm \
#     ondrejmo/faker "$@"
# }

RUN wget https://github.com/bit3/faker-cli/releases/download/1.4/faker.phar -P /usr/local/bin
RUN chmod 755 /usr/local/bin/faker.phar

ENTRYPOINT [ "/usr/local/bin/faker.phar" ]
CMD [ "--help" ]
