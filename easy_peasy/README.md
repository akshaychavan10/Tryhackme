start with nmap

80
6498 : ssh 
65524
***

http

/hidden --> /whatever --> in source code found : "ZmxhZ3tmMXJzN19mbDRnfQ==" --> decode it : flag{f1rs7_fl4g} 
/robots.txt
/index.html

***

easy_peasy.txt download from tryhackme questions page --> got flag `flag{9fdafbd64c47471a8f54cd3fc64cd312}`

its some kind of wordlist. use to ffuf first.

***

65524 http

/robot.txt

```
User-Agent:*
Disallow:/
Robots Not Allowed
User-Agent:a18672860d0510e5ab6699730763b250
Allow:/
This Flag Can Enter But Only This Flag No More Exceptions


```
user-agent : md5 in above code. cracked using site : `https://md5hashing.net/hash/md5/a18672860d0510e5ab6699730763b250`


/index.html --> source code found `ObsJmP173N2X6dOrAgEAL0Vu` (base62 encoded) --> /n0th1ng3ls3m4tt3r

http://$ip:65524/n0th1ng3ls3m4tt3r -->
`940d71e8655ac41efb5f8ab850668505b86dd64186a66e57d1483e7f5fe6fd81` : mypasswordforthatjob

lets crack it using john

http://10.10.202.55:65524/n0th1ng3ls3m4tt3r/ --> img present on this page --donwloat the binarycodepixabay.jpg image. use `mypasswordforthatjob` to unhide data from image.

found `secrettext.tx`

```language
username:boring
password:
01101001 01100011 01101111 01101110 01110110 01100101 01110010 01110100 01100101 01100100 01101101 01111001 01110000 01100001 01110011 01110011 01110111 01101111 01110010 01100100 01110100 01101111 01100010 01101001 01101110 01100001 01110010 01111001
```

found username : boring
decode pw : iconvertedmypasswordtobinary


****

get in as boring.

cat user.txt

```
User Flag But It Seems Wrong Like It`s Rotated Or Something
synt{a0jvgf33zfa0ez4y}
```

its rot13 : flag{n0wits33msn0rm4l}