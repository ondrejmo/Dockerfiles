## Pony - a scret store backend by gpg
## https://github.com/jfrazelle/pony
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
