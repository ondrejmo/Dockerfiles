FROM ubuntu:xenial
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

RUN apt-get update && apt-get install -y \
  git \
  python-paramiko \
  python-pip \
  python-pycurl \
  python-dev \
  build-essential

RUN pip install ansible markupsafe

# Amazon EC2
RUN pip install boto
# DigitalOcean
RUN pip install dopy==0.3.5
# Gcloud
RUN pip install "apache-libcloud>=0.17.0"
# Linode
RUN pip install linode-python
# Rackspace Cloud
RUN pip install pyrax

VOLUME /root/.ssh

RUN git clone https://github.com/jlund/streisand.git /streisand
WORKDIR /streisand

ENTRYPOINT [ "/streisand/streisand" ]
