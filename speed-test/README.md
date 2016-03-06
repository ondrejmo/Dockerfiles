# Test your internet connection speed and ping using speedtest.net from the CLI
## [Github: sindresorhus/speed-test](https://github.com/sindresorhus/speed-test)
<pre>
<code>
speed-test(){  
  docker run -it --rm \  
    --net host \
    ondrejmo/speed-test "$@"  
}  
</code>
</pre>
