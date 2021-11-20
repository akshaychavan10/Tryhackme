start with nmap scan.

21 ftp
2222 ssh
80 http

***


ftp :

log in with anonymous.

```
Dammit man... you'te the worst dev i've seen. You set the same pass for the system user, and the password is so weak... i cracked it in seconds. Gosh... what a mess!


```

- password is crackble.

***

http

ffuf :

/robots.txt 
	/openemr-5_0_1_3 : not found error. 
	user found : mike
/simple


in /simple webpage found. which uses `cms made simple 2.2.8`

it has sql vuln


```
Salt for password found: 1dac0d92e9fa6bb2
[+] Username found: mitch
[+] Email found: admin@admin.com
[+] Password found: 0c01f4468bd75d7a84c7eb73846e8d96


```

hydra 

`[2222][ssh] host: 10.10.38.105   login: mitch   password: secret`