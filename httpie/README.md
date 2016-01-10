# CLI HTTP client; user-friendly cURL replacement featuring intuitive UI, JSON support, syntax highlighting, wget-like downloads, extensions, etc.
## [Github: jkbrtz/httpie](https://github.com/jkbrzt/httpie)
http(){  
	docker run -it --rm \  
    --net host \  
    --log-driver none \  
    -v /var/run/docker.sock:/var/run/docker.sock \  
    -v `pwd`:/downloads \  
    -w /downloads  \  
    ondrejmo/httpie "$@"  
}  
