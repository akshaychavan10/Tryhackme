start with nmap scan

http and ssh found.

***

http

robots.txt

```
# If the Joomla site is installed within a folder 
# eg www.example.com/joomla/ then the robots.txt file 
# MUST be moved to the site root 
# eg www.example.com/robots.txt
# AND the joomla folder name MUST be prefixed to all of the
# paths. 
# eg the Disallow rule for the /administrator/ folder MUST 
# be changed to read 
# Disallow: /joomla/administrator/
#
# For more information about the robots.txt standard, see:
# http://www.robotstxt.org/orig.html
#
# For syntax checking, see:
# http://tool.motoricerca.info/robots-checker.phtml

User-agent: *
Disallow: /administrator/
Disallow: /bin/
Disallow: /cache/
Disallow: /cli/
Disallow: /components/
Disallow: /includes/
Disallow: /installation/
Disallow: /language/
Disallow: /layouts/
Disallow: /libraries/
Disallow: /logs/
Disallow: /modules/
Disallow: /plugins/
Disallow: /tmp/


```


found joomla version : 3.7.0

there is sql injection vul for this version

jonah:$2y$10$0veO/JSFh4389Lluc4Xya.dfy2MF.bZhz0jVMw.V.d3p12kBtZutm

jonah:spiderman123

log in into joomla. got rev shell from templates.

get shell as apache.

in /var/www/html/configuration.php got `jjameson` password.

jjameson:nv5uz9r3ZEDzVjNu

user.txt : 27a260fe3cba712cfdedb1c86d80442e

root.txt : eec3d53292b1821868266858d7fa6f79