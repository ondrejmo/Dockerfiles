# Dshell is a network forensic analysis framework.
## [Github: USArmyResearchLab/Dshell](https://github.com/USArmyResearchLab/Dshell)
<pre>
<code>
dshell() {  
  docker run -it --rm \  
  --net host \  
  --cap-add=NET_ADMIN \  
  -v `pwd`:/pcap \  
  -w /pcap \  
  ondrejmo/dshell "$@"  
}  
</code>
</pre>
