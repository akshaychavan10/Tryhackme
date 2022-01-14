# FFUF Report

  Command line : `ffuf -u http://10.10.142.232/FUZZ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e php,html -of md -o dirscan/directorylist_php_html.md`
  Time: 2022-01-04T05:33:37-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | # directory-list-2.3-medium.txt | http://10.10.142.232/# directory-list-2.3-medium.txt |  | 1 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # license, visit http://creativecommons.org/licenses/by-sa/3.0/  | http://10.10.142.232/# license, visit http://creativecommons.org/licenses/by-sa/3.0/  |  | 19 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  |  | http://10.10.142.232/ |  | 40 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # | http://10.10.142.232/# |  | 28 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | #html | http://10.10.142.232/#html |  | 39 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | #php | http://10.10.142.232/#php |  | 11 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # This work is licensed under the Creative Commons php | http://10.10.142.232/# This work is licensed under the Creative Commons php |  | 14 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | #html | http://10.10.142.232/#html |  | 12 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # | http://10.10.142.232/# |  | 37 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # Suite 300, San Francisco, California, 94105, USA.html | http://10.10.142.232/# Suite 300, San Francisco, California, 94105, USA.html |  | 27 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # | http://10.10.142.232/# |  | 10 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | img | http://10.10.142.232/img | http://10.10.142.232/img/ | 115 | 301 | 312 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | # Copyright 2007 James Fisherhtml | http://10.10.142.232/# Copyright 2007 James Fisherhtml |  | 9 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # Copyright 2007 James Fisherphp | http://10.10.142.232/# Copyright 2007 James Fisherphp |  | 8 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # Copyright 2007 James Fisher | http://10.10.142.232/# Copyright 2007 James Fisher |  | 7 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | #php | http://10.10.142.232/#php |  | 5 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | #html | http://10.10.142.232/#html |  | 6 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # on atleast 2 different hostshtml | http://10.10.142.232/# on atleast 2 different hostshtml |  | 36 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # directory-list-2.3-medium.txtphp | http://10.10.142.232/# directory-list-2.3-medium.txtphp |  | 2 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # directory-list-2.3-medium.txthtml | http://10.10.142.232/# directory-list-2.3-medium.txthtml |  | 3 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # Suite 300, San Francisco, California, 94105, USA.php | http://10.10.142.232/# Suite 300, San Francisco, California, 94105, USA.php |  | 26 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # | http://10.10.142.232/# |  | 4 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # or send a letter to Creative Commons, 171 Second Street,  | http://10.10.142.232/# or send a letter to Creative Commons, 171 Second Street,  |  | 22 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # on atleast 2 different hosts | http://10.10.142.232/# on atleast 2 different hosts |  | 34 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # on atleast 2 different hostsphp | http://10.10.142.232/# on atleast 2 different hostsphp |  | 35 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # or send a letter to Creative Commons, 171 Second Street, php | http://10.10.142.232/# or send a letter to Creative Commons, 171 Second Street, php |  | 23 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # license, visit http://creativecommons.org/licenses/by-sa/3.0/ php | http://10.10.142.232/# license, visit http://creativecommons.org/licenses/by-sa/3.0/ php |  | 20 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # Priority ordered case sensative list, where entries were found html | http://10.10.142.232/# Priority ordered case sensative list, where entries were found html |  | 33 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # Suite 300, San Francisco, California, 94105, USA. | http://10.10.142.232/# Suite 300, San Francisco, California, 94105, USA. |  | 25 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # Attribution-Share Alike 3.0 License. To view a copy of this html | http://10.10.142.232/# Attribution-Share Alike 3.0 License. To view a copy of this html |  | 18 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | #php | http://10.10.142.232/#php |  | 29 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # Priority ordered case sensative list, where entries were found php | http://10.10.142.232/# Priority ordered case sensative list, where entries were found php |  | 32 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # Priority ordered case sensative list, where entries were found  | http://10.10.142.232/# Priority ordered case sensative list, where entries were found  |  | 31 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # Attribution-Share Alike 3.0 License. To view a copy of this php | http://10.10.142.232/# Attribution-Share Alike 3.0 License. To view a copy of this php |  | 17 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # Attribution-Share Alike 3.0 License. To view a copy of this  | http://10.10.142.232/# Attribution-Share Alike 3.0 License. To view a copy of this  |  | 16 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | #html | http://10.10.142.232/#html |  | 30 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # This work is licensed under the Creative Commons html | http://10.10.142.232/# This work is licensed under the Creative Commons html |  | 15 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # or send a letter to Creative Commons, 171 Second Street, html | http://10.10.142.232/# or send a letter to Creative Commons, 171 Second Street, html |  | 24 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # license, visit http://creativecommons.org/licenses/by-sa/3.0/ html | http://10.10.142.232/# license, visit http://creativecommons.org/licenses/by-sa/3.0/ html |  | 21 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | # This work is licensed under the Creative Commons  | http://10.10.142.232/# This work is licensed under the Creative Commons  |  | 13 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | #php | http://10.10.142.232/#php |  | 38 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | css | http://10.10.142.232/css | http://10.10.142.232/css/ | 1648 | 301 | 312 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | js | http://10.10.142.232/js | http://10.10.142.232/js/ | 2857 | 301 | 311 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | fonts | http://10.10.142.232/fonts | http://10.10.142.232/fonts/ | 8311 | 301 | 314 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.142.232/ |  | 135718 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | server-status | http://10.10.142.232/server-status |  | 286570 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  