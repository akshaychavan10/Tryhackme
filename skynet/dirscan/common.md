# FFUF Report

  Command line : `ffuf -u http://10.10.139.167/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-12-16T02:13:34-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.139.167/ |  | 1 | 200 | 523 | 26 | 19 | text/html |  |
  | .htpasswd | http://10.10.139.167/.htpasswd |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | admin | http://10.10.139.167/admin | http://10.10.139.167/admin/ | 286 | 301 | 314 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.139.167/.htaccess |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.139.167/.hta |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | config | http://10.10.139.167/config | http://10.10.139.167/config/ | 994 | 301 | 315 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | css | http://10.10.139.167/css | http://10.10.139.167/css/ | 1114 | 301 | 312 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.139.167/index.html |  | 2020 | 200 | 523 | 26 | 19 | text/html |  |
  | js | http://10.10.139.167/js | http://10.10.139.167/js/ | 2179 | 301 | 311 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.139.167/server-status |  | 3588 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | squirrelmail | http://10.10.139.167/squirrelmail | http://10.10.139.167/squirrelmail/ | 3803 | 301 | 321 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  