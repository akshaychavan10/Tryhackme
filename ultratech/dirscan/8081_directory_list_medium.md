# FFUF Report

  Command line : `ffuf -u http://10.10.112.62:8081/FUZZ -w /usr/share/seclists/Discovery/Web-Content/directory-list-2.3-medium.txt -of md -o dirscan/8081_directory_list_medium.md`
  Time: 2021-11-21T02:49:09-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | # Copyright 2007 James Fisher | http://10.10.112.62:8081/# Copyright 2007 James Fisher |  | 3 | 200 | 20 | 3 | 1 | text/html; charset=utf-8 |  |
  | # Suite 300, San Francisco, California, 94105, USA. | http://10.10.112.62:8081/# Suite 300, San Francisco, California, 94105, USA. |  | 9 | 200 | 20 | 3 | 1 | text/html; charset=utf-8 |  |
  | # directory-list-2.3-medium.txt | http://10.10.112.62:8081/# directory-list-2.3-medium.txt |  | 1 | 200 | 20 | 3 | 1 | text/html; charset=utf-8 |  |
  | # | http://10.10.112.62:8081/# |  | 4 | 200 | 20 | 3 | 1 | text/html; charset=utf-8 |  |
  | # or send a letter to Creative Commons, 171 Second Street, | http://10.10.112.62:8081/# or send a letter to Creative Commons, 171 Second Street, |  | 8 | 200 | 20 | 3 | 1 | text/html; charset=utf-8 |  |
  | # | http://10.10.112.62:8081/# |  | 2 | 200 | 20 | 3 | 1 | text/html; charset=utf-8 |  |
  | # Priority ordered case-sensitive list, where entries were found | http://10.10.112.62:8081/# Priority ordered case-sensitive list, where entries were found |  | 11 | 200 | 20 | 3 | 1 | text/html; charset=utf-8 |  |
  |  | http://10.10.112.62:8081/ |  | 14 | 200 | 20 | 3 | 1 | text/html; charset=utf-8 |  |
  | # Attribution-Share Alike 3.0 License. To view a copy of this | http://10.10.112.62:8081/# Attribution-Share Alike 3.0 License. To view a copy of this |  | 6 | 200 | 20 | 3 | 1 | text/html; charset=utf-8 |  |
  | # license, visit http://creativecommons.org/licenses/by-sa/3.0/ | http://10.10.112.62:8081/# license, visit http://creativecommons.org/licenses/by-sa/3.0/ |  | 7 | 200 | 20 | 3 | 1 | text/html; charset=utf-8 |  |
  | # This work is licensed under the Creative Commons | http://10.10.112.62:8081/# This work is licensed under the Creative Commons |  | 5 | 200 | 20 | 3 | 1 | text/html; charset=utf-8 |  |
  | # | http://10.10.112.62:8081/# |  | 13 | 200 | 20 | 3 | 1 | text/html; charset=utf-8 |  |
  | # on at least 2 different hosts | http://10.10.112.62:8081/# on at least 2 different hosts |  | 12 | 200 | 20 | 3 | 1 | text/html; charset=utf-8 |  |
  | # | http://10.10.112.62:8081/# |  | 10 | 200 | 20 | 3 | 1 | text/html; charset=utf-8 |  |
  | auth | http://10.10.112.62:8081/auth |  | 2526 | 200 | 39 | 8 | 1 | text/html; charset=utf-8 |  |
  |  | http://10.10.112.62:8081/ |  | 45240 | 200 | 20 | 3 | 1 | text/html; charset=utf-8 |  |
  | Auth | http://10.10.112.62:8081/Auth |  | 84978 | 200 | 39 | 8 | 1 | text/html; charset=utf-8 |  |
  