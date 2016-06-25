FROM ubuntu:trusty
MAINTAINER Ondřej Molík <ondrejmo@outlook.com>
ADD README.md /README.md

# install depdencies
RUN apt-get update && apt-get install -y \
  python-crypto \
  python-dpkt \
  python-ipy \
  python-pypcap \
  python-pip \
  curl \
  tar \
  git

RUN pip install pygeoip

# Download the latest version of the code from GitHub
WORKDIR /opt/
RUN git clone https://github.com/USArmyResearchLab/Dshell.git

# download and gunzip GeoIP files
RUN curl -sSL "http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz" | tar -v -C /opt/Dshell/share/GeoIP/ -xz
RUN curl -sSL "http://geolite.maxmind.com/download/geoip/database/GeoIPv6.dat.gz" | tar -v -C /opt/Dshell/share/GeoIP/ -xz
RUN curl -sSL "http://download.maxmind.com/download/geoip/database/asnum/GeoIPASNum.dat.gz" | tar -v -C /opt/Dshell/share/GeoIP/ -xz
RUN curl -sSL "http://download.maxmind.com/download/geoip/database/asnum/GeoIPASNumv6.dat.gz" | tar -v -C /opt/Dshell/share/GeoIP/ -xz

# make Dshell
WORKDIR /opt/Dshell/
RUN make

# Used to mount pcap from a host OS directory
VOLUME /pcap
WORKDIR /pcap

# clear to make the image smaller
RUN apt-get autoclean

ENTRYPOINT [ "/opt/Dshell/dshell" ]
