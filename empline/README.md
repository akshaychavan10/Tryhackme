# Empline

> 20 sep 2021 

start with nmap scan. found some open ports.

port 80 is open. lets enumerate the http first.

`http://job.empline.thm/careers` found in source code.

custome js file is also present : `assets/js/custom.js`


add it in `/etc/hosts`

checking out `job.empline.thm` 

- login form is found. ( potential for sql injection)

opencats (Version 0.9.4 Countach)

opencat is application tracking system

in js username and password found.

```javascript

document.getElementById('username').value = 'john@mycompany.net';
document.getElementById('password').value = 'john99';

```

***

try to find other subdomain (not find anything)

***
mysql pentest (not interested.)

***

subdomain dirscan.

`upload` : store uploaded files.

***

upload file functionlity found. no filter is in place. upload php file got shell.

```
/* Database configuration. */                                                                                                    
define('DATABASE_USER', 'james');                                                                                                
define('DATABASE_PASS', 'ng6pUFvsGNtw');                                                                                         
define('DATABASE_HOST', 'localhost');                                                                                            
define('DATABASE_NAME', 'opencats');  

```

****

George : pretonnevippasempre
james : 

got user.txt : `91cb89c70aa2e5ce0e0116dab099078e`

***

privilege escalation

capabilities for ruby is cap_chown+ep