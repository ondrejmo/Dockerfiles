# Framework for Man-In-The-Middle attacks
## [Github: byt3bl33d3r/MITMf](https://github.com/byt3bl33d3r/MITMf)
mitmf(){  
  docker run -it --rm \  
    --net host \  
    --privileged \  
    -v `pwd`/mitmf-logs:/MITMf/logs \  
    -w /MITMf \  
    ondrejmo/mitmf "$@"  
  sudo sysctl -w net.ipv4.ip_forward=1  
}  
