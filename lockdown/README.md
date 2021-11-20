box_name : lockdown
ip address : 10.10.62.135
platform : tryhackme
date : 04-10-2021

****

start with nmap scan. we got ssh,and http port open.

***

webpage : port 80

ip address resolve to `contacttracer.thm`. lets add it in our `/etc/hosts`

- website build using php

**dirscan**

/admin
/build
/classes
/dist
/inc
/index.php
/libs
/plugins
/temp
/uploads


javascript file found : http://contacttracer.thm/dist/js/script.js

comment : <a href="forgot-password.html">I forgot my password</a>

***

tried authentication bypass payloads : `username=admin’ or 1=1-- -;`


```
http://contacttracer.thm/dist/img/no-image-available.png

```

sweetpandemonium

***

checking if server is changing uploaded file name and then save it.

in sql injection we got table called `avatar` 
upload user avatar and check it in `avatar` table

server saving file as `uploads/1634294100_test.php`

upload shell.php and try to get rce


***

checked for lfi vul on `http://$ip/admin?page=` parameter.

***
```language
$dev_data = array('id'=>'-1','firstname'=>'Developer','lastname'=>'','username'=>'dev_oretnom','password'=>'5da283a2d990e8d8512cf967df5bc0d0','last_login'=>'','date_updated'=>'','date_added'=>'');
```

***

using cyrus:sweetpandemonium

got cyrus account

we can run /opt/scan/scan.sh as root.

scan.sh file

```bash
#!/bin/bash

read -p "Enter path: " TARGET

if [[ -e "$TARGET" && -r "$TARGET" ]]
  then
    /usr/bin/clamscan "$TARGET" --copy=/home/cyrus/quarantine
    /bin/chown -R cyrus:cyrus /home/cyrus/quarantine
  else
    echo "Invalid or inaccessible path."
fi


```

this file takes path of directory. then `clamscan` scan for all file in this directory for virus. if it found virus in file. it store that file in `/home/cyrus/quarantine`.

we can crete yara rules. like

```
rule root
{
 strings:
  $s = "cyrus" nocase
 condition:
  $s
}

```

in this rule it checks for cyrus keywords and if found in file it save that file in /home/cyrus/quarantine/ 

we can check for /etc/shadow. since this file has cyrus in it it will dump taht file.

***
tiarna           (maxine)


maxine can run all cmd as root.

