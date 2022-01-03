# FFUF Report

  Command line : `ffuf -u http://10.10.231.37/island/FUZZ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -of md -o dirscan/island_directory_list.md`
  Time: 2022-01-02T09:01:15-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | # or send a letter to Creative Commons, 171 Second Street,  | http://10.10.231.37/island/# or send a letter to Creative Commons, 171 Second Street,  |  | 8 | 200 | 345 | 41 | 25 | text/html |  |
  | # Priority ordered case sensative list, where entries were found  | http://10.10.231.37/island/# Priority ordered case sensative list, where entries were found  |  | 11 | 200 | 345 | 41 | 25 | text/html |  |
  | # | http://10.10.231.37/island/# |  | 10 | 200 | 345 | 41 | 25 | text/html |  |
  | # on atleast 2 different hosts | http://10.10.231.37/island/# on atleast 2 different hosts |  | 12 | 200 | 345 | 41 | 25 | text/html |  |
  | # | http://10.10.231.37/island/# |  | 13 | 200 | 345 | 41 | 25 | text/html |  |
  |  | http://10.10.231.37/island/ |  | 14 | 200 | 345 | 41 | 25 | text/html |  |
  | # Copyright 2007 James Fisher | http://10.10.231.37/island/# Copyright 2007 James Fisher |  | 3 | 200 | 345 | 41 | 25 | text/html |  |
  | # directory-list-2.3-medium.txt | http://10.10.231.37/island/# directory-list-2.3-medium.txt |  | 1 | 200 | 345 | 41 | 25 | text/html |  |
  | # | http://10.10.231.37/island/# |  | 2 | 200 | 345 | 41 | 25 | text/html |  |
  | # This work is licensed under the Creative Commons  | http://10.10.231.37/island/# This work is licensed under the Creative Commons  |  | 5 | 200 | 345 | 41 | 25 | text/html |  |
  | # | http://10.10.231.37/island/# |  | 4 | 200 | 345 | 41 | 25 | text/html |  |
  | # Attribution-Share Alike 3.0 License. To view a copy of this  | http://10.10.231.37/island/# Attribution-Share Alike 3.0 License. To view a copy of this  |  | 6 | 200 | 345 | 41 | 25 | text/html |  |
  | # license, visit http://creativecommons.org/licenses/by-sa/3.0/  | http://10.10.231.37/island/# license, visit http://creativecommons.org/licenses/by-sa/3.0/  |  | 7 | 200 | 345 | 41 | 25 | text/html |  |
  | # Suite 300, San Francisco, California, 94105, USA. | http://10.10.231.37/island/# Suite 300, San Francisco, California, 94105, USA. |  | 9 | 200 | 345 | 41 | 25 | text/html |  |
  | 2100 | http://10.10.231.37/island/2100 | http://10.10.231.37/island/2100/ | 7334 | 301 | 240 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  