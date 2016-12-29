FROM ubuntu:trusty

RUN apt-get update && apt-get -y install \
  git \
  wget \
  openssl \
  && apt-get autoclean

RUN wget http://downloads.drone.io/master/drone.deb
RUN dpkg -i drone.deb

EXPOSE 8080

ENV DRONE_SERVER_PORT 0.0.0.0:8080
ENV DRONE_DATABASE_DATASOURCE /var/lib/drone/drone.sqlite

#ENV DRONE_GITHUB_CLIENT <CLIENT_TOKEN_HERE>
#ENV DRONE_GITHUB_SECRET <CLIENT_SECRET_HERE>

ENTRYPOINT [ "/usr/local/bin/droned" ]
