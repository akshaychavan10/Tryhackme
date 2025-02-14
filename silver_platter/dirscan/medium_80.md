# FFUF Report

  Command line : `ffuf -u http://10.10.61.28/FUZZ -w /usr/share/SecLists/Discovery/Web-Content/directory-list-2.3-medium.txt -of md -o dirscan/medium_80.md`
  Time: 2025-01-23T14:03:32&#43;01:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | Duration | ResultFile | ScraperData | Ffufhash
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- | :------------ | :-------- |
  | # or send a letter to Creative Commons, 171 Second Street, | http://10.10.61.28/# or send a letter to Creative Commons, 171 Second Street, |  | 8 | 200 | 14124 | 926 | 346 | text/html | 72.9524ms |  |  | b3d448
  | # | http://10.10.61.28/# |  | 2 | 200 | 14124 | 926 | 346 | text/html | 172.625469ms |  |  | b3d442
  | # on at least 2 different hosts | http://10.10.61.28/# on at least 2 different hosts |  | 12 | 200 | 14124 | 926 | 346 | text/html | 173.527339ms |  |  | b3d44c
  | # | http://10.10.61.28/# |  | 13 | 200 | 14124 | 926 | 346 | text/html | 166.726447ms |  |  | b3d44d
  | # license, visit http://creativecommons.org/licenses/by-sa/3.0/ | http://10.10.61.28/# license, visit http://creativecommons.org/licenses/by-sa/3.0/ |  | 7 | 200 | 14124 | 926 | 346 | text/html | 168.632392ms |  |  | b3d447
  | # This work is licensed under the Creative Commons | http://10.10.61.28/# This work is licensed under the Creative Commons |  | 5 | 200 | 14124 | 926 | 346 | text/html | 168.15374ms |  |  | b3d445
  | # | http://10.10.61.28/# |  | 10 | 200 | 14124 | 926 | 346 | text/html | 172.218988ms |  |  | b3d44a
  | # Priority ordered case-sensitive list, where entries were found | http://10.10.61.28/# Priority ordered case-sensitive list, where entries were found |  | 11 | 200 | 14124 | 926 | 346 | text/html | 174.351186ms |  |  | b3d44b
  | # Attribution-Share Alike 3.0 License. To view a copy of this | http://10.10.61.28/# Attribution-Share Alike 3.0 License. To view a copy of this |  | 6 | 200 | 14124 | 926 | 346 | text/html | 174.352729ms |  |  | b3d446
  |  | http://10.10.61.28/ |  | 14 | 200 | 14124 | 926 | 346 | text/html | 177.978451ms |  |  | b3d44e
  | # directory-list-2.3-medium.txt | http://10.10.61.28/# directory-list-2.3-medium.txt |  | 1 | 200 | 14124 | 926 | 346 | text/html | 180.190728ms |  |  | b3d441
  | images | http://10.10.61.28/images | http://10.10.61.28/images/ | 16 | 301 | 178 | 6 | 8 | text/html | 118.552569ms |  |  | b3d4410
  | # Suite 300, San Francisco, California, 94105, USA. | http://10.10.61.28/# Suite 300, San Francisco, California, 94105, USA. |  | 9 | 200 | 14124 | 926 | 346 | text/html | 123.342328ms |  |  | b3d449
  | # Copyright 2007 James Fisher | http://10.10.61.28/# Copyright 2007 James Fisher |  | 3 | 200 | 14124 | 926 | 346 | text/html | 186.175365ms |  |  | b3d443
  | # | http://10.10.61.28/# |  | 4 | 200 | 14124 | 926 | 346 | text/html | 192.31786ms |  |  | b3d444
  | assets | http://10.10.61.28/assets | http://10.10.61.28/assets/ | 291 | 301 | 178 | 6 | 8 | text/html | 80.329364ms |  |  | b3d44123
  |  | http://10.10.61.28/ |  | 45240 | 200 | 14124 | 926 | 346 | text/html | 51.026778ms |  |  | b3d44b0b8
  