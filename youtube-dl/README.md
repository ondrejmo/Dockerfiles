# Small command-line program to download videos from YouTube.com and other video sites
## [Github: rg3/youtube-dl](https://github.com/rg3/youtube-dl)
<pre>
<code>
youtube-dl(){  
  docker run -it --rm \  
    --log-driver none \  
    -v `pwd`:/downloads \  
    -w /downloads \  
    ondrejmo/youtube-dl "$@"  
}  
</code>
</pre>
