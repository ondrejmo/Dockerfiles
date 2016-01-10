# Streaming torrent client for the web
## [Github: feross/webtorrent](https://github.com/feross/webtorrent)
webtorrent(){  
  docker run -it --rm \  
    --net host \  
    -v `pwd`:/stream \  
    -w /stream \  
    ondrejmo/webtorrent "$@"  
}  
