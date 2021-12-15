nmap

21
22
80

***
ftp
login disabled

***

http

Potentially risky methods: TRACE

/backups

/cgi-bin/ --> shellshock , ffuf for sh and other extention

potential user :
Paradox
elf
MuirlandOracle
james
NinjaJc01
Muir

comment found in index page : `<!-- 0.99999% is 5 nines, right? -->`


***


      Customer Name
Username
Password
Par. A. Doxx
paradox
ShibesAreGreat123
0day Montgomery
0day
OllieIsTheBestDog
Muir Land
muirlandoracle
A11D0gsAreAw3s0me
          1

  Credit card number
CVC
4111 1111 4555 1142
432
5555 3412 4444 1115
642
5103 2219 1119 9245
737
2

***

privs

SELinux disables

nfs
`/home/james *(rw,fsid=0,sync,no_root_squash,insecure)`

mount this nfs share with pivoting.

cp /bin/bash bash

give bash root:root
give premisiion 4777

./bash -p 

got root