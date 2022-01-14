# FFUF Report

  Command line : `ffuf -u http://10.10.102.173:8080/FUZZ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -of md -o dirscan/dir_list_23.md -fc 403`
  Time: 2022-01-07T05:04:02-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | # directory-list-2.3-medium.txt | http://10.10.102.173:8080/# directory-list-2.3-medium.txt | http://10.10.102.173:8080/login | 1 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  | # | http://10.10.102.173:8080/# | http://10.10.102.173:8080/login | 2 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  | # Copyright 2007 James Fisher | http://10.10.102.173:8080/# Copyright 2007 James Fisher | http://10.10.102.173:8080/login | 3 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  | # | http://10.10.102.173:8080/# | http://10.10.102.173:8080/login | 4 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  | # Attribution-Share Alike 3.0 License. To view a copy of this  | http://10.10.102.173:8080/# Attribution-Share Alike 3.0 License. To view a copy of this  | http://10.10.102.173:8080/login | 6 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  | # | http://10.10.102.173:8080/# | http://10.10.102.173:8080/login | 10 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  | # Suite 300, San Francisco, California, 94105, USA. | http://10.10.102.173:8080/# Suite 300, San Francisco, California, 94105, USA. | http://10.10.102.173:8080/login | 9 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  | # license, visit http://creativecommons.org/licenses/by-sa/3.0/  | http://10.10.102.173:8080/# license, visit http://creativecommons.org/licenses/by-sa/3.0/  | http://10.10.102.173:8080/login | 7 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  | # Priority ordered case sensative list, where entries were found  | http://10.10.102.173:8080/# Priority ordered case sensative list, where entries were found  | http://10.10.102.173:8080/login | 11 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  | # or send a letter to Creative Commons, 171 Second Street,  | http://10.10.102.173:8080/# or send a letter to Creative Commons, 171 Second Street,  | http://10.10.102.173:8080/login | 8 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  | # on atleast 2 different hosts | http://10.10.102.173:8080/# on atleast 2 different hosts | http://10.10.102.173:8080/login | 12 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  | # This work is licensed under the Creative Commons  | http://10.10.102.173:8080/# This work is licensed under the Creative Commons  | http://10.10.102.173:8080/login | 5 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  | # | http://10.10.102.173:8080/# | http://10.10.102.173:8080/login | 13 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  |  | http://10.10.102.173:8080/ | http://10.10.102.173:8080/login | 14 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  | login | http://10.10.102.173:8080/login |  | 53 | 200 | 5589 | 1617 | 140 | text/html; charset=utf-8 |  |
  | register | http://10.10.102.173:8080/register |  | 65 | 200 | 5021 | 1678 | 129 | text/html; charset=utf-8 |  |
  | logout | http://10.10.102.173:8080/logout | http://10.10.102.173:8080/login | 1225 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  | shutdown | http://10.10.102.173:8080/shutdown |  | 11508 | 200 | 23 | 3 | 1 | text/html; charset=utf-8 |  |
  