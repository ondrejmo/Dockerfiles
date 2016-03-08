#!/bin/bash

mitmf(){
    DIR="$(pwd)"
    mkdir -p "$DIR"
    chown -R "$USER" "$DIR"
    docker pull ondrejmo/mitmf
    docker create --name mitmf ondrejmo/mitmf /bin/true
    docker export mitmf | tar -x -C "$DIR" -f -
    docker rm mitmf
    sudo systemd-nspawn \
        --directory="$DIR" \
        --capability=all \
        --share-system \
        --user=root "$@"

    systemd-nspawn --directory=`pwd` --capability=all --share-system --user=root "$@"
}
