# FFUF Report

  Command line : `ffuf -u http://10.10.213.146/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-12-03T16:49:13-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.213.146/.hta |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.213.146/ |  | 1 | 200 | 10918 | 3499 | 376 | text/html |  |
  | admin | http://10.10.213.146/admin | http://10.10.213.146/admin/ | 286 | 301 | 314 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.213.146/.htaccess |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.213.146/.htpasswd |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.213.146/index.html |  | 2020 | 200 | 10918 | 3499 | 376 | text/html |  |
  | server-status | http://10.10.213.146/server-status |  | 3588 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  