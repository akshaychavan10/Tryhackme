start with nmap

two port found. 22,12340
ssh and http.

lets enum http.

***
http.

ffuf with the big wordlist. found `rms`


http://$ip:12340/rms

functionality :

- login
- signup

ffuf the /rms:
/swf
/validation
/admin


/swf/swfobject.js --> NI
/validation/ --> forbidden.


***

/rms/admin/FUZZ.php

accounts                [Status: 302, Size: 0, Words: 1, Lines: 1]
auth                    [Status: 302, Size: 0, Words: 1, Lines: 1]
categories              [Status: 302, Size: 0, Words: 1, Lines: 1]
footer                  [Status: 200, Size: 118, Words: 10, Lines: 3]
index                   [Status: 302, Size: 0, Words: 1, Lines: 1]
logout                  [Status: 200, Size: 748, Words: 42, Lines: 22]
messages                [Status: 302, Size: 0, Words: 1, Lines: 1]
options                 [Status: 302, Size: 0, Words: 1, Lines: 1]
orders                  [Status: 302, Size: 0, Words: 1, Lines: 1]
profile                 [Status: 302, Size: 0, Words: 1, Lines: 1]
reservations            [Status: 302, Size: 0, Words: 1, Lines: 1]
specials                [Status: 302, Size: 0, Words: 1, Lines: 1]

***

searchsploit restarunt management system.

found exploit.

run it

get rev shell

***

```
cat config.php
<?php
    define('DB_HOST', 'localhost');
    define('DB_USER', 'root');
    define('DB_PASSWORD', 'veerUffIrangUfcubyig');
    define('DB_DATABASE', 'dbrms');
    define('APP_NAME', 'Pathfinder Hotel');
    error_reporting(1);


```

get mysql access.


got  hash

```
0D98E25BF3667656CFAFD800B212D3A84EEF5B1F

```

from rdbs table and db column.

```
Stephen : 81dc9bdb52d04dc20036dbd8313ed055 : 1234
john : 1254737c076cf867dc53d60a0364f38e : jsmith123
edward : 6f72ea079fd65aff33a67a3f3618b89c
test : 098f6bcd4621d373cade4e832627b4f6 :test

```

in /etc/fstab found edward password : FrobjoodAdkoonceanJa


***

privs 


we can run reboot as sudo

edit file /etc/systemd/system/zeno_monitor_servervice file

Q. why exploit work. why this exploit upload file.
Q. /etc/systemd/system/