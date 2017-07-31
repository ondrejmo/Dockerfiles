FROM ubuntu:wily
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

ADD README.md /README.md

RUN apt-get update && apt-get install -y \
  iptables \
  tcpdump \
  git \
  python-pip \
  python-dev \
  python-setuptools \
  libpcap0.8-dev \
  libnetfilter-queue-dev \
  libssl-dev \
  libjpeg-dev \
  libxml2-dev \
  libxslt1-dev \
  libcapstone3 \
  libcapstone-dev
RUN git clone https://github.com/byt3bl33d3r/MITMf /MITMf
WORKDIR /MITMf
RUN git submodule init && git submodule update --recursive
RUN pip install -r requirements.txt
VOLUME /MITMf/logs/

ENTRYPOINT ["python", "/MITMf/mitmf.py"]
CMD [ "--help" ]
