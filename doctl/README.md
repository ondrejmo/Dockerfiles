# A command line tool for DigitalOcean services including Droplets and DNS
## [Github: digitalocean/doctl](https://www.github.com/digitalocean/doctl)
```bash
doctl() {  
  docker run -it --rm \  
    --name doctl \  
    -e DIGITALOCEAN_API_KEY \  
    --log-driver none \  
    ondrejmo/doctl "$@"  
}  
```
