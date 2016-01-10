# Dumb downloader that scrapes the web
## [Github: soimort/you-get](https://github.com/soimort/you-get)
you-get(){  
  docker run -it --rm \  
    --log-driver none \  
    -v `pwd`:/downloads \  
    -w /downloads \  
    ondrejmo/you-get "$@"  
}  
