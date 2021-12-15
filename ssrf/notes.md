It's a vulnerability that allows a malicious user to cause the webserver to make an additional or edited HTTP request to the resource of the attacker's choosing. 

**types**
1. normal ssrf
2. blind ssrf

impact :

- Access to unauthorised areas.
- Access to customer/organisational data.
- Ability to Scale to internal networks.
- Reveal authentication tokens/credentials.


***

example:

if the orignal url is `http://website.in/stock?url=http://api.website.in/api/stock/item?id=23` and if attacker request `http://website.in/stock?url=http://api.website.in/api/users` then website return the users data.

we can also utilise directory traversal if we have only contorl of path 

eg : url is : `http://website.thm/stock?url=/item?id=123`
attacker request : `http://website.thm/stock?url=/../users`
webser request : `http://website.thm/api/stock/../user`

`&x=` used to stop remaining path from being appended to the end of attackers url

***

how to spot

When a full URL is used in a parameter in the address bar:
https://tryhackme-images.s3.amazonaws.com/user-uploads/5efe36fb68daf465530ca761/room-content/956e1914b116cbc9e564e3bb3d9ab50a.png


A hidden field in a form:
https://tryhackme-images.s3.amazonaws.com/user-uploads/5efe36fb68daf465530ca761/room-content/237696fc8e405d25d4fc7bbcc67919f0.png


A partial URL such as just the hostname:
https://tryhackme-images.s3.amazonaws.com/user-uploads/5efe36fb68daf465530ca761/room-content/f3c387849e91a4f15a7b59ff7324be75.png

Or perhaps only the path of the URL:
https://tryhackme-images.s3.amazonaws.com/user-uploads/5efe36fb68daf465530ca761/room-content/3fd583950617f7a3713a107fcb4cfa49.png

there are lot of trial and error will be required to find a working payload.

For blind ssrf you need use external http logging monitor such as `requestbin.com` , your own HTTP server or Burp Suite's Collaborator client.

***

overcome common ssrf defences

- deny list : 

all requests are accepted apart from  specified in a list or matching a particular pattern.

Attackers can bypass a Deny List by using alternative references for example if localhost blocked 0, 0.0.0.0, 0000, 127.1, `127.*.*.*`, 2130706433, 017700000001.

or subdomains that have a DNS record which resolves to the IP Address 127.0.0.1 such as 127.0.0.1.nip.io.

if in cloud enviroment if they blocked 169.254.169.254 you can create subdomain pointing to 169.254.169.254 to bypass.

- allow list

all requests get denied unless they appear on a list or match a particular pattern

- open redirection 



