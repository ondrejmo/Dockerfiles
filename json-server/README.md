# Get a full fake REST API with zero coding in less than 30 seconds (seriously)
## [Github: typicode/json-server](https://github.com/typicode/json-server)
```bash
json-server(){  
  docker run -it --rm \  
    --net host \  
    -v `pwd`:/data \  
    -w /data \  
    ondrejmo/json-server "$@"  
}  
```
