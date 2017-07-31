FROM node:alpine
LABEL maintainer "Ondřej Molík <ondrejmo@outlook.com>"

## https://github.com/NodeBB/NodeBB
# docker run -d --name nodebb-redis redis:latest
# docker run -it --name nodebb --link nodebb-redis:redis -p 80:4567 ondrejmo/nodebb

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
