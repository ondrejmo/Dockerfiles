# Pull base image.
FROM node:latest
MAINTAINER Ondřej Molík ondrejmo@outlook.com
ADD README.md /README.md

# Install nodebb
RUN cd /opt && git clone -b v0.6.x https://github.com/NodeBB/NodeBB nodebb
RUN cd /opt/nodebb && npm install

# Create a mountable volume
VOLUME /opt/nodebb

# Define working directory.
WORKDIR /opt/nodebb

# Expose ports
EXPOSE 4567

# Define default command.
CMD ["node", "app.js"]
