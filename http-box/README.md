# Box with tools for playing with http api's.
## [Github: jkbrtz/httpie](https://github.com/jkbrzt/httpie)
## [Github: eliangcs/http-prompt](https://github.com/eliangcs/http-prompt)
## [Github: jpmens/jo](https://github.com/jpmens/jo)
## [Github: stedolan/jq](https://github.com/stedolan/jq)
## [Github: holman/spark](https://github.com/holman/spark)
```bash
http-box(){  
	docker run -it --rm \  
    --net host \  
    --log-driver none \  
    -v /var/run/docker.sock:/var/run/docker.sock \  
    -v `pwd`:/workbench \  
    -w /workbench  \  
    ondrejmo/http-box "$@"  
}  
```
