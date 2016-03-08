# Framework for Man-In-The-Middle attacks
## [Github: byt3bl33d3r/MITMf](https://github.com/byt3bl33d3r/MITMf)
```bash
mitmf(){  
  docker run -it --rm \  
    --net host \  
    --privileged \  
    -v `pwd`/mitmf-logs:/MITMf/logs \  
    -w /MITMf \  
    ondrejmo/mitmf "$@"  
  sudo sysctl -w net.ipv4.ip_forward=1  
}  
```

**WARNING:** Because of some issues with volumes and because running MITMf in docker sometimes breaks networking, I've decided to use it only with [coreos/toolbox](https://github.com/coreos/toolbox) script.
