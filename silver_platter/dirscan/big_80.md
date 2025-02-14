# FFUF Report

  Command line : `ffuf -u http://10.10.61.28/FUZZ -w /usr/share/SecLists/Discovery/Web-Content/directory-list-2.3-big.txt -of md -o dirscan/big_80.md`
  Time: 2025-01-23T14:11:33&#43;01:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | Duration | ResultFile | ScraperData | Ffufhash
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- | :------------ | :-------- |
  | # | http://10.10.61.28/# |  | 4 | 200 | 14124 | 926 | 346 | text/html | 182.565806ms |  |  | 515ad4
  | # Copyright 2007 James Fisher | http://10.10.61.28/# Copyright 2007 James Fisher |  | 3 | 200 | 14124 | 926 | 346 | text/html | 212.335001ms |  |  | 515ad3
  | # directory-list-2.3-big.txt | http://10.10.61.28/# directory-list-2.3-big.txt |  | 1 | 200 | 14124 | 926 | 346 | text/html | 243.067789ms |  |  | 515ad1
  | # | http://10.10.61.28/# |  | 2 | 200 | 14124 | 926 | 346 | text/html | 234.943181ms |  |  | 515ad2
  | # This work is licensed under the Creative Commons | http://10.10.61.28/# This work is licensed under the Creative Commons |  | 5 | 200 | 14124 | 926 | 346 | text/html | 170.069553ms |  |  | 515ad5
  | # Attribution-Share Alike 3.0 License. To view a copy of this | http://10.10.61.28/# Attribution-Share Alike 3.0 License. To view a copy of this |  | 6 | 200 | 14124 | 926 | 346 | text/html | 285.668764ms |  |  | 515ad6
  | images | http://10.10.61.28/images | http://10.10.61.28/images/ | 16 | 301 | 178 | 6 | 8 | text/html | 272.820255ms |  |  | 515ad10
  | # Priority-ordered case-sensitive list, where entries were found | http://10.10.61.28/# Priority-ordered case-sensitive list, where entries were found |  | 11 | 200 | 14124 | 926 | 346 | text/html | 329.09452ms |  |  | 515adb
  | # on at least 1 host | http://10.10.61.28/# on at least 1 host |  | 12 | 200 | 14124 | 926 | 346 | text/html | 373.839204ms |  |  | 515adc
  | # license, visit http://creativecommons.org/licenses/by-sa/3.0/ | http://10.10.61.28/# license, visit http://creativecommons.org/licenses/by-sa/3.0/ |  | 7 | 200 | 14124 | 926 | 346 | text/html | 375.463463ms |  |  | 515ad7
  | # | http://10.10.61.28/# |  | 10 | 200 | 14124 | 926 | 346 | text/html | 377.604296ms |  |  | 515ada
  | # | http://10.10.61.28/# |  | 13 | 200 | 14124 | 926 | 346 | text/html | 383.836504ms |  |  | 515add
  | # or send a letter to Creative Commons, 171 Second Street, | http://10.10.61.28/# or send a letter to Creative Commons, 171 Second Street, |  | 8 | 200 | 14124 | 926 | 346 | text/html | 378.288886ms |  |  | 515ad8
  | # Suite 300, San Francisco, California, 94105, USA. | http://10.10.61.28/# Suite 300, San Francisco, California, 94105, USA. |  | 9 | 200 | 14124 | 926 | 346 | text/html | 391.002168ms |  |  | 515ad9
  |  | http://10.10.61.28/ |  | 14 | 200 | 14124 | 926 | 346 | text/html | 318.56725ms |  |  | 515ade
  | assets | http://10.10.61.28/assets | http://10.10.61.28/assets/ | 291 | 301 | 178 | 6 | 8 | text/html | 282.865978ms |  |  | 515ad123
  