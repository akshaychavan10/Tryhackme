start with nmap

http and ssh open.

***

http:

fuzzing for dir

/admin --> login form --> sqlmap (not vulnerable)
/aboutus
/downloads
/img

/admin post req send to `api/login`

some username found on /aboutus

```
Ninja 
Pars
Szymex
Bee
MuirlandOracle

```

- james13





```
james@overpass-prod:~$ find / -name *overpass* 2>/dev/null
/usr/bin/overpass
/home/james/.overpass
james@overpass-prod:~$ /usr/bin/overpass 
Welcome to Overpass
Options:
1       Retrieve Password For Service
2       Set or Update Password For Service
3       Delete Password For Service
4       Retrieve All Passwords
5       Exit
Choose an option:       4
System   saydrawnlyingpicture


```

cat /etc/crontab
