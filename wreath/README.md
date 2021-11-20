information gathering.

there are three machines. 

```language
    There are three machines on the network
    There is at least one public facing webserver
    There is a self-hosted git server somewhere on the network
    The git server is internal, so Thomas may have pushed sensitive information into it
    There is a PC running on the network that has antivirus installed, meaning we can hazard a guess that this is likely to be Windows
    By the sounds of it this is likely to be the server variant of Windows, which might work in our favour
    The (assumed) Windows PC cannot be accessed directly from the webserver
```

***

## nmap

add `thomaswreath.thm` in `/etc/hosts`


http:

https :  portfolio site

phone number :  01347 822945 
email : me@thomaswreath.thm
mobile number :  +447821548812 

```
Address
21 Highland Court,
Easingwold,
East Riding,
Yorkshire,
England,
YO61 3QL 

```

***


nothing interested found in homepage source code.

on port `10000` MiniServ 1.890 (Webmin httpd) running which is exploited by CVE-2019-15107



ssh : 


***

## Exploitation


download the exploit for miniserver 1.890 and exploit the target.

now we get access as root.

found id_rsa in /root/.ssh/ . download that file and now we has ssh acces.

***
***
***

## pivoting

Pivoting is the art of using access obtained over one machine to exploit another machine deeper in the network.









