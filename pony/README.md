# Pony - a secret store backend by gpg
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
