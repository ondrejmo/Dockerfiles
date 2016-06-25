# Streaming torrent client for the web
## [Github: feross/webtorrent](https://github.com/feross/webtorrent)
```bash
webtorrent(){  
  docker run -it --rm \  
    --net host \  
    -v `pwd`:/downloads \  
    -w /downloads \  
    ondrejmo/webtorrent "$@"  
}  
```
