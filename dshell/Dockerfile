FROM ubuntu:trusty
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

## https://github.com/USArmyResearchLab/Dshell
# dshell() {
#   docker run -it --rm \
#   --net host \
#   --cap-add=NET_ADMIN \
#   -u $(id -u):$(id -g) \
#   -v "$PWD":/pcap \
#   -w /pcap \
#   ondrejmo/dshell "$@"
# }

RUN apt-get update && apt-get install -y \
  python-crypto \
  python-dpkt \
  python-ipy \
  python-pypcap \
  python-pip \
  wget \
  git \
  && apt-get autoclean

RUN pip install pygeoip

WORKDIR /opt/
RUN git clone https://github.com/USArmyResearchLab/Dshell.git

WORKDIR /opt/Dshell/share/GeoIP/
RUN wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz
RUN gunzip GeoIP.dat.gz
RUN wget http://geolite.maxmind.com/download/geoip/database/GeoIPv6.dat.gz
RUN gunzip GeoIPv6.dat.gz
RUN wget http://download.maxmind.com/download/geoip/database/asnum/GeoIPASNum.dat.gz
RUN gunzip GeoIPASNum.dat.gz
RUN wget http://download.maxmind.com/download/geoip/database/asnum/GeoIPASNumv6.dat.gz
RUN gunzip GeoIPASNumv6.dat.gz

WORKDIR /opt/Dshell/
RUN make

VOLUME /pcap
WORKDIR /pcap

ENTRYPOINT [ "/opt/Dshell/dshell" ]
