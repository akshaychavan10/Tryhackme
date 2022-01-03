# FFUF Report

  Command line : `ffuf -u http://10.10.22.31/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-12-30T03:02:23-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccess | http://10.10.22.31/.htaccess |  | 12 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.22.31/.hta |  | 11 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.22.31/.htpasswd |  | 13 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | 0 | http://10.10.22.31/0 |  | 131 | 200 | 3857 | 522 | 108 | text/html; charset=UTF-8 |  |
  | 01 | http://10.10.22.31/01 |  | 133 | 200 | 4086 | 431 | 103 | text/html; charset=UTF-8 |  |
  | 1 | http://10.10.22.31/1 |  | 142 | 200 | 4086 | 431 | 103 | text/html; charset=UTF-8 |  |
  | 1x1 | http://10.10.22.31/1x1 |  | 166 | 200 | 4086 | 431 | 103 | text/html; charset=UTF-8 |  |
  |  | http://10.10.22.31/ |  | 1 | 200 | 3871 | 522 | 108 | text/html; charset=UTF-8 |  |
  | about | http://10.10.22.31/about |  | 223 | 200 | 3357 | 372 | 93 | text/html; charset=UTF-8 |  |
  | About | http://10.10.22.31/About |  | 224 | 200 | 3343 | 372 | 93 | text/html; charset=UTF-8 |  |
  | admin | http://10.10.22.31/admin |  | 286 | 200 | 1582 | 377 | 42 | text/html; charset=UTF-8 |  |
  | api | http://10.10.22.31/api |  | 428 | 200 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | assets | http://10.10.22.31/assets | http://10.10.22.31/assets/?url=assets | 499 | 301 | 322 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | author | http://10.10.22.31/author |  | 517 | 200 | 3596 | 419 | 102 | text/html; charset=UTF-8 |  |
  | blog | http://10.10.22.31/blog |  | 646 | 200 | 3857 | 522 | 108 | text/html; charset=UTF-8 |  |
  | category | http://10.10.22.31/category |  | 787 | 200 | 3868 | 522 | 110 | text/html; charset=UTF-8 |  |
  | feed | http://10.10.22.31/feed |  | 1592 | 200 | 735 | 37 | 22 | application/rss&#43;xml; charset=utf-8 |  |
  | fm | http://10.10.22.31/fm |  | 1640 | 200 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | index | http://10.10.22.31/index |  | 2017 | 200 | 3857 | 522 | 108 | text/html; charset=UTF-8 |  |
  | Index | http://10.10.22.31/Index |  | 2018 | 200 | 3857 | 522 | 108 | text/html; charset=UTF-8 |  |
  | lib | http://10.10.22.31/lib | http://10.10.22.31/lib/?url=lib | 2274 | 301 | 316 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | log | http://10.10.22.31/log | http://10.10.22.31/log/?url=log | 2337 | 301 | 316 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | login | http://10.10.22.31/login |  | 2347 | 200 | 1582 | 377 | 42 | text/html; charset=UTF-8 |  |
  | robots.txt | http://10.10.22.31/robots.txt |  | 3436 | 200 | 65 | 5 | 5 | text/plain |  |
  | Search | http://10.10.22.31/Search |  | 3526 | 200 | 3857 | 522 | 108 | text/html; charset=UTF-8 |  |
  | search | http://10.10.22.31/search |  | 3525 | 200 | 3857 | 522 | 108 | text/html; charset=UTF-8 |  |
  | server-status | http://10.10.22.31/server-status |  | 3588 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | sites | http://10.10.22.31/sites | http://10.10.22.31/sites/?url=sites | 3699 | 301 | 320 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | src | http://10.10.22.31/src | http://10.10.22.31/src/?url=src | 3805 | 301 | 316 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | tag | http://10.10.22.31/tag |  | 3959 | 200 | 3880 | 523 | 110 | text/html; charset=UTF-8 |  |
  | tags | http://10.10.22.31/tags |  | 3961 | 200 | 3143 | 337 | 85 | text/html; charset=UTF-8 |  |
  | themes | http://10.10.22.31/themes | http://10.10.22.31/themes/?url=themes | 4037 | 301 | 322 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | tmp | http://10.10.22.31/tmp | http://10.10.22.31/tmp/?url=tmp | 4069 | 301 | 316 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  