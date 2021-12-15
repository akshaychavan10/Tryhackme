password cracking vs password guessing

password cracking : Password cracking is a technique used for discovering passwords from encrypted or hashed data to plaintext data.

password guessing : Password guessing is a method of guessing passwords for online protocols and services based on dictionaries. 

***

- some website lists that provide default passwords for various products

https://cirt.net/passwords
https://default-password.info/
https://datarecovery.com/rd/default-passwords/

- weakpassword

https://wiki.skullsecurity.org/index.php?title=Passwords - This includes the most well-known collections of passwords.

SecLists - A huge collection of all kinds of lists, not only for password cracking.

- leaked password

https://github.com/danielmiessler/SecLists/tree/master/Passwords/Leaked-Databases

- combine and clear dupicates in wordlists.
```
cat file1 file2 > newfile
sort newfile | uniq -u > finalfile
```

- customised wordlist

`cewl` tool used to create customised wordlist.

```
cewl -w output.lst -d 5 -m 5 http://website.com

-w : output file
-d : depth (default 2)
-m : gather words that are 5 or more than 5 charaters
```

- username generator

 https://github.com/therodri2/username_generator.git

```
user@thm$ echo "John Smith" > users.lst
user@thm$ python3 username_generator.py -w users.lst
 
```


- CUPP - Common User Passwords Profiler
if you know some details about a specific target, such as their birthdate, pet name, company name, etc., this could be a helpful tool to generate passwords based on this known information.

https://github.com/Mebus/cupp


***

## offline attack

rule-bases :

Rule-Based attacks assume the attacker knows something about the password policy. Rules are applied to create passwords within the guidelines of the given password policy and should, in theory, only generate valid passwords.

we use `john` tool for this.
John the ripper has a config file that contains rule sets, which is located at /etc/john/john.conf or /opt/john/john.conf.

in john we can build our own rule(s) and use it at run time while john is cracking the hash or use the rule to build a custom wordlist!

## password spray

A brute-force attack targets a specific username to try many weak and predictable passwords. While a password spraying attack targets many usernames using one common weak password

hydra
```
 hydra -L usernames-list.txt -p Spring2021 ssh://10.1.1.10
```

**RDP**

https://github.com/xFreed0m/RDPassSpray

```
python3 RDPassSpray.py -U usernames-list.txt -p Spring2021! -d THM-labs -T RDP_servers.txt

```

