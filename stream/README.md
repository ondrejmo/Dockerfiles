# Streaming torrent client for node.js
# commandline chromecast player
## [Github: mafintosh/peerflix](https://github.com/mafintosh/peerflix)
## [Github: xat/castnow)](https://github.com/xat/castnow)
peerflix(){  
  docker run -it --rm \  
    --net host \  
    -v `pwd`:/stream \  
    -w /stream \  
    --entrypoint peerflix \  
    ondrejmo/stream "$@"  
}  
castnow(){  
  docker run -it --rm \  
    --net host \  
    -v `pwd`:/stream \  
    -w /stream \  
    --entrypoint castnow \  
    ondrejmo/stream "$@"  
}  
