# FFUF Report

  Command line : `ffuf -u http://10.10.230.26:8080/FUZZ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -of md -o dirscan/medium.md`
  Time: 2022-01-10T01:15:27-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | # Suite 300, San Francisco, California, 94105, USA. | http://10.10.230.26:8080/# Suite 300, San Francisco, California, 94105, USA. |  | 9 | 200 | 1455 | 174 | 24 | text/html; charset=UTF-8 |  |
  | # | http://10.10.230.26:8080/# |  | 4 | 200 | 1455 | 174 | 24 | text/html; charset=UTF-8 |  |
  | # Copyright 2007 James Fisher | http://10.10.230.26:8080/# Copyright 2007 James Fisher |  | 3 | 200 | 1455 | 174 | 24 | text/html; charset=UTF-8 |  |
  | # Attribution-Share Alike 3.0 License. To view a copy of this  | http://10.10.230.26:8080/# Attribution-Share Alike 3.0 License. To view a copy of this  |  | 6 | 200 | 1455 | 174 | 24 | text/html; charset=UTF-8 |  |
  | # or send a letter to Creative Commons, 171 Second Street,  | http://10.10.230.26:8080/# or send a letter to Creative Commons, 171 Second Street,  |  | 8 | 200 | 1455 | 174 | 24 | text/html; charset=UTF-8 |  |
  | # | http://10.10.230.26:8080/# |  | 2 | 200 | 1455 | 174 | 24 | text/html; charset=UTF-8 |  |
  | # directory-list-2.3-medium.txt | http://10.10.230.26:8080/# directory-list-2.3-medium.txt |  | 1 | 200 | 1455 | 174 | 24 | text/html; charset=UTF-8 |  |
  | # license, visit http://creativecommons.org/licenses/by-sa/3.0/  | http://10.10.230.26:8080/# license, visit http://creativecommons.org/licenses/by-sa/3.0/  |  | 7 | 200 | 1455 | 174 | 24 | text/html; charset=UTF-8 |  |
  | # This work is licensed under the Creative Commons  | http://10.10.230.26:8080/# This work is licensed under the Creative Commons  |  | 5 | 200 | 1455 | 174 | 24 | text/html; charset=UTF-8 |  |
  | # Priority ordered case sensative list, where entries were found  | http://10.10.230.26:8080/# Priority ordered case sensative list, where entries were found  |  | 11 | 200 | 1455 | 174 | 24 | text/html; charset=UTF-8 |  |
  |  | http://10.10.230.26:8080/ |  | 14 | 200 | 1455 | 174 | 24 | text/html; charset=UTF-8 |  |
  | # | http://10.10.230.26:8080/# |  | 10 | 200 | 1455 | 174 | 24 | text/html; charset=UTF-8 |  |
  | # | http://10.10.230.26:8080/# |  | 13 | 200 | 1455 | 174 | 24 | text/html; charset=UTF-8 |  |
  | # on atleast 2 different hosts | http://10.10.230.26:8080/# on atleast 2 different hosts |  | 12 | 200 | 1455 | 174 | 24 | text/html; charset=UTF-8 |  |
  | debug | http://10.10.230.26:8080/debug | / | 5711 | 302 | 0 | 1 | 1 |  |  |
  |  | http://10.10.230.26:8080/ |  | 45240 | 200 | 1480 | 175 | 24 | text/html; charset=UTF-8 |  |
  