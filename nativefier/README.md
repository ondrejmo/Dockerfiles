# Wrap any web page natively without even thinking, across Windows, OSX and Linux
## [Github: jiahaog/nativefier](https://github.com/jiahaog/nativefier)
```bash
nativefier() {  
  docker run -it --rm \
    --net host \
    -v `pwd`/apps:/apps \
    -w /apps \
    ondrejmo/nativefier "$@"  
}  
```
