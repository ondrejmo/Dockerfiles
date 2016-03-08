# SSH multiplex
## [Github: crosbymichael/slex](https://www.github.com/crosbymichael/slex)
```bash
slex() {  
  docker run -it --rm \  
    --name slex \  
    --net host \  
    -v ~/.ssh:/root/.ssh \  
    -v ~/.gnupg:/root/.gnupg \  
    -v /etc/hosts:/etc/hosts:ro \  
    ondrejmo/slex "$@"  
}  
```
