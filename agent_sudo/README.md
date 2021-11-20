start with nmap

FTP 
HTTP
SSH

***

fuzzing
/index.php 

site uses php .

***

index.php

```
Dear agents,

Use your own codename as user-agent to access the site.

From,
Agent R 

```

we have to change user-agent to some codename.

there is `R` codename for agent. lets try A-Z as user agent.

- User-agent `C` redirect to `/agent_C_attention.php`

```
/agen_c_attention.php

Attention chris,

Do you still remember our deal? Please tell agent J about the stuff ASAP. Also, change your god damn password, is weak!

From,
Agent R 

```

Username found.

chris
J
C
R

lets try ftp bruteforce for chris.

`21][ftp] host: 10.10.127.97   login: chris   password: crystal`

chris:crystal

in ftp found three files.

cute-alien.jpg  cutie.png   To_agentJ.txt


To_agentJ.txt

```language
Dear agent J,

All these alien like photos are fake! Agent R stored the real picture inside your directory. Your login password is somehow stored in the fake picture. It shouldn't be a problem for you.

From,
Agent C
```


binwalk -e cutie.png

got 8702.zip password prtoected.

crack pass with john

`alien`

got `To_agentR.txt`

```
Agent C,

We need to send the picture to 'QXJlYTUx' as soon as possible!

By,
Agent R

```

decode `QXJlYTUx` as base64 `Area51`

use `Area51` on cute-alien.jpg and extract `message.txt`

from message.txt

james:hackerrules!

***

privs:

vulns to  2019-14287 