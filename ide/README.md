start with nmap scan

port 21,22 and 80 found open.

***

ftp 
anonymous login is present. but nothing found in ftp.
version : vsftpd 3.0.3 . no exploit is interesting
we can not upload file on server.

got file named `-`


```
Hey john,
I have reset the password as you have asked. Please use the default password to login. 
Also, please take care of the image file ;)
- drac.


```

[80][http-post-form] host: 10.10.23.249   login: john   password: password



***

fuzz the port 80 http but nothing interested found

lets take look of web site itself.

default apache web page.nothing interrested in source code.

***

download ubuntu img from default apache webpage. checking metadata.

fuzz for png,jpeg,jpg, and gif img exteniton. nothing found.

***

found http://10.10.23.249/codiad/


codiad version is 2.8.4

ffuf the http://$ip/codiad/FUZZ


***

privs

/bin/sh -c for i in 0 1 2 3; do rm -rf /var/www/html/
config.php /var/www/html/data & sleep 15; done;



/usr/bin/mtr-packet = cap_net_raw+ep


-rw-r--r-- 1 root root 2765 Aug  6  2020 /etc/apt/sources.list.curtin.old


Th3dRaCULa1sR3aL

privilege escaltion resource : https://gist.github.com/A1vinSmith/78786df7899a840ec43c5ddecb6a4740