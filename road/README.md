start with nmap

80
22

***

http 

curriour website.

we can track the shipment and also there is login page.

ffuf :

```
assets                  [Status: 301, Size: 315, Words: 20, Lines: 10]
index.html              [Status: 200, Size: 19607, Words: 2975, Lines: 540]
phpMyAdmin              [Status: 301, Size: 319, Words: 20, Lines: 10]
server-status           [Status: 403, Size: 278, Words: 20, Lines: 10]
v2     
career.html


```

*todo* : recursive directory bruteforce /v2

phpmyadmin looks interesting.


register user account : test@test.thm
log in as test@test.thm

while browsing around found file upload funcationliyt but only admin can upoads file. also got admin email : `admin@sky.thm`

there is also reset password funcatioality on which we can change the user password. 

when we capture the resetpassword req in burp

profile.php --> `<!-- /v2/profileimages/ -->`

mail found : info@skycouriers.thm

/v2/admin/reg.php --> Connect Error (2002) No such file or directory


admin@sky.thm

changed password of admin@sky.thm

/usr/lib/mysql/plugin/component_mysqlbackup.so
/var/log/nginx/access.log error.log

passwd file: /etc/pam.d/passwd                                                                                        
passwd file: /usr/share/bash-completion/completions/passwd                                                            
passwd file: /usr/share/lintian/overrides/passwd  


rom '/etc/mysql/mysql.conf.d/mysqld.cnf' Mysql user: user              = mysql                                       
Found readable /etc/mysql/my.cnf                                                                                      
!includedir /etc/mysql/conf.d/                                                                                        
!includedir /etc/mysql/mysql.conf.d/  

/etc/overlayroot.conf
/etc/apache2/apache2.conf

/var/log/nginx/access.log
/var/www/html/phpMyAdmin/libraries/classes/Config.php
/var/www/html/phpMyAdmin/libraries/classes/Config/ConfigFile.php
/var/www/html/phpMyAdmin/libraries/classes/Config/Forms/Page/SqlForm.php
/var/www/html/phpMyAdmin/libraries/classes/Config/Forms/Page/DbStructureForm.php


***

{ "_id" : ObjectId("60ae2690203d21857b184a78"), "Name" : "webdeveloper", "Pass" : "BahamasChapp123!@#" }
