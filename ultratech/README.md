start with nmap

port 
21
22
8081
31331

***

ftp 

anonymous login is failed.

***

8081

http server
node.js
i think its api

ffuf
/auth
/Auth
put is availble
***

31331

mail id : ultratech@yop.com

ffuf
/what.html
/index.html
/javascript --> forbidden 
/js
/robots.txt ---> /utech_sitemap.txt 

in /utech_sitemap.txt :
/index.html
/what.html
/partners.html --> login form


/ping?ip=10.10.112.64  -->ping to ip address

r00t : f357a0c52799563c7c7b76c1e7543a32
r00t : n100906

***

3306

/home/www/api/node_modules/http-signature/http_signing.md

we are in docker group

**learn**

- what is docker
- os cmd injection mindmap
- docker privilege escalation