# A visual tool for wiring the Internet of Things
## [Github: node-red/node-red](https://github.com/node-red/node-red)
## [Github: node-red/node-red-nodes](https://github.com/node-red/node-red-nodes)
<pre>
<code>
node-red(){  
  del_stopped node-red  

  docker run -d \  
    --restart always \  
    -p 127.0.0.1:1880:1880 \  
    --name node-red \  
    ondrejmo/node-red  

  hostess add node-red $(docker inspect --format "{{.NetworkSettings.Networks.bridge.IPAddress}}" node-red)  
  docker exec node-red bash  
}  
</code>
</pre>
