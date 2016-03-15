#!/bin/bash
## Export README.md label file from image
getreadme(){
  echo "This function will work only against ondrejmo/* docker images." | lolcat
  sleep 1
  if [ "$(echo $1 | head -c 8)" != "ondrejmo" ]; then
    echo "This image isn't supported" | lolcat;
  else
    NAME=${1##*/}
    docker run --name "$NAME" "$1" /bin/true
    docker cp "$NAME":/README.md "$NAME".md
    docker rm "$NAME";
  fi
}
