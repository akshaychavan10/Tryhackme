we given a twitter account.

https://twitter.com/hakanbe40520689

lets start with that account.

- user post a twitt . found the vhost address : `uranium.thm`

- we can send application file. which he is going to open in terminal . filename should be `application` 	

***

nmap

open ports. 22,25,80

smtp service found : port 25
http : port 80.

***

http

- nothing interested in source code
- ffuf : nothing interested.


***

smtp  


user found : root,hakanbey

```
[+] 10.10.249.195:25      - 10.10.249.195:25 Users found: , _apt, backup, bin, daemon, dnsmasq, games, gnats, irc, landscape, list, lp, lxd, mail, man, messagebus, news, nobody, pollinate, postfix, postmaster, proxy, sshd, sync, sys, syslog, systemd-network, systemd-resolve, systemd-timesync, uucp, uuidd, web, www-data


```


send mail to hakanbey@uranium with application. appication has bash reverse hsell.

got user access.

***

```
hakanbey  2223  0.0  0.1   4636   924 ?        Ss   11:29   0:00 /bin/sh -c ripmime -i /var/mail/hakanbey -d /home/hak
anbey/mail_file/ ; find /home/hakanbey/mail_file/ -name "application*" -type f -exec chmod +x {} \; -exec {} \; ; > /v
ar/mail/hakanbey ; rm /home/hakanbey/mail_file/*


```


-rw-r--r-- 1 root root 2765 Aug  6  2020 /etc/apt/sources.list.curtin.old


0000   4d 42 4d 44 31 76 64 70 6a 67 33 6b 47 76 36 53   MBMD1vdpjg3kGv6S
0010   73 49 7a 35 36 56 4e 47 0a                        sIz56VNG.

MBMD1vdpjg3kGv6SsIz56VNG

Mys3cr3tp4sw0rD