as always start with nmap

21
22
80

***

ftp

anonymous login failed

***

http 

- apache webpae default

in source code found :

```
    <title>Apache2 Ubuntu Default Page: It works! If you see this add 'team.thm' to your hosts!</title>

```
added `team.thm` to /etc/hosts

robots.txt --> dale : might be user on box

ffuf the /scripts with sh html and php with big lists.

ffuf the /scritps/ with .txt got `script.txt` --> got script.old

got ftp creds.

login ftp

got subdomain hint.



/etc/hosts

