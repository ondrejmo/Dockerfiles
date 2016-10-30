#!/bin/bash

docker network create hubot
docker run -it --name hubot --net hubot node:latest bash
docker run -d --name redis --restart always --net hubot redis:alpine redis-server

Run npm install --save <package-name> to add the package as a dependency and install it.
Add the package to external-scripts.json.
Run npm home <package-name> to open a browser window for the homepage of the script, where you can find more information about configuring and installing the script.

npm install hubot-service-update --save
npm install mudge/hubot-codenames --save
npm install hubot-yolo --save

["hubot-service-update"]
["hubot-codenames"]
["hubot-yolo"]
