start with nmap

80 http                       
4012 ssh
4019 ftp
5901 vnc
6001 x11
***

http

directory fuzzing :
http://10.10.208.172/concrete5/FUZZ

application --> ffuf recurive
concrete                [Status: 301, Size: 327, Words: 20, Lines: 10]
index.php               [Status: 200, Size: 22231, Words: 5761, Lines: 425]
packages                [Status: 301, Size: 327, Words: 20, Lines: 10]
robots.txt              [Status: 200, Size: 532, Words: 18, Lines: 18]
updates                 [Status: 301, Size: 326, Words: 20, Lines: 10]
:: Progress: [4614/4614] :: Job [1/1] :: 204 req/sec :: Duration: [0:00:28] :: Errors: 0 ::


***


anonymus login is success

usernames :

lgreen : potential user.
adam 
super-spam
Lucy_Loser 
Benjamin_Blogger 
Donald_Dump 
Adam_Admin 


sandiago

mysql creds

```
    'default-connection' => 'concrete',
    'connections' => [
        'concrete' => [
            'driver' => 'c5_pdo_mysql',
            'server' => 'localhost',
            'database' => 'concrete5_db',
            'username' => 'concrete5',
            'password' => 'arzwashere023r3z0z0z08973jhkjii££$',
            'character_set' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
        ],


```


mysql dump hash

```
adam_admin : $2a$12$eLh73vpKLtF4zn49JHg2/Ozvhi5Cm1J6/u3/RYkRDLYEq16bBOIwW
donald_dump : $2a$12$aAzrxNtJChXaKofR77yz0egzsdPc6VhrOki8PU8yqJ8KxDkRFMj0u
Lucy_Loser : $2a$12$KahgUr/z6ZA0kS30/wuK2.WE8fgxU4bkFJu1Xq5V1afJj2v3ZnUHi
Benjamin_Blogger : $2a$12$kt5CWnj5xVShpoQo4AesFeXT.RQFGC.58aSf4Iada24f.RQp4uLEy


```

***

www-data@super-spam:/home/lucy_loser/.MessagesBackupToGalactic$ cat note.txt

Note to self. General super spam mentioned that I should not make the same mistake again of re-using the same key for the XOR encryption of our messages to Alpha Solaris IV's headquarters, otherwise we could have some serious issues if our encrypted messages are compromised. I must keep reminding myself,do not re-use keys,I have done it 8 times already!.The most important messages we sent to the HQ were the first and eighth message.I hope they arrived safely.They are crucial to our end goal.

```
Port 4012                                                                                                             
PermitRootLogin yes                                                                                                   
ChallengeResponseAuthentication no                                                                                    
UsePAM yes                                                                                                            
  --> Some certificates were found (out limited):                                                                     
/etc/pollinate/entropy.ubuntu.com.pem                                                                                 
                                                                                                                      
 --> /etc/hosts.allow file found, read the rules:   

```

```
/var/www/html/concrete5/concrete/controllers/single_page/dashboard/sys
tem/backup.php

```