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