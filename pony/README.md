# Local File-Based Password, API Key, Secret, Recovery Code Store Backed By GPG
## [Github: jfrazelle/pony](https://github.com/jfrazelle/pony)
<pre>
<code>
pony(){
  docker run -it --rm \
    -v ~/.gnupg:/root/.gnupg \
    -v ~/.pony:/root/.pony \
    ondrejmo/pony "$@"
}
</code>
</pre>
