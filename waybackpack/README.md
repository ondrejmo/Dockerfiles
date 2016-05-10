# Download the entire Wayback Machine archive for a given URL.
## [Github: jsvine/waybackpack](https://github.com/jsvine/waybackpack)
```bash
waybackpack(){  
	docker run -it --rm \  
    -v `pwd`:/downloads \  
    -w /downloads  \  
    ondrejmo/waybackpack"$@"  
}  
```
