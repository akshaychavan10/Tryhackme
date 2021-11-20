# FFUF Report

  Command line : `ffuf -u http://10.10.249.195/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md -fc 404`
  Time: 2021-10-18T06:10:21-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.249.195/ |  | 1 | 200 | 10351 | 428 | 305 | text/html |  |
  | .htaccess | http://10.10.249.195/.htaccess |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.249.195/.hta |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.249.195/.htpasswd |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | assets | http://10.10.249.195/assets | http://10.10.249.195/assets/ | 499 | 301 | 315 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | images | http://10.10.249.195/images | http://10.10.249.195/images/ | 1991 | 301 | 315 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.249.195/index.html |  | 2020 | 200 | 10351 | 428 | 305 | text/html |  |
  | server-status | http://10.10.249.195/server-status |  | 3588 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  