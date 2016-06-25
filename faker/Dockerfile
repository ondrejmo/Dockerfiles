FROM php:alpine
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

RUN wget https://github.com/bit3/faker-cli/releases/download/1.4/faker.phar -P /usr/local/bin
RUN chmod 755 /usr/local/bin/faker.phar

ENTRYPOINT [ "/usr/local/bin/faker.phar" ]
