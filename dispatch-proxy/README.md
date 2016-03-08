# A SOCKS5/HTTP proxy that balances traffic between multiple internet connections.
## [Github: Morhaus/dispatch-proxy](https://github.com/Morhaus/dispatch-proxy)
```bash
dispatch(){  
  docker run -it --rm \  
    --net host \  
    ondrejmo/dispatch-proxy "$@"  
}  
```
