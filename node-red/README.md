# A visual tool for wiring the Internet of Things
## [Github: node-red/node-red](https://github.com/node-red/node-red)
## [Github: node-red/node-red-nodes](https://github.com/node-red/node-red-nodes)
```bash
node-red(){  
  del_stopped node-red  

  docker run -d \  
    -p 127.0.0.1:1880:1880 \  
    -v ~/data/node-red:/root/.node-red \  
    --name node-red \  
    ondrejmo/node-red  

  docker exec -it node-red bash -c "export TERM=$TERM; clear; bash"
}  
```
