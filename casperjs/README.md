# Navigation scripting & testing utility for PhantomJS and SlimerJS
## [Github: n1k0/casperjs](https://github.com/n1k0/casperjs)
```bash
casperjs(){  
  docker run -it --rm \  
    -v "$(pwd)":/app \  
    ondrejmo/casperjs "$@"  
}  
```
