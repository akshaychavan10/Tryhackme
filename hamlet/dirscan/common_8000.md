# FFUF Report

  Command line : `ffuf -u http://10.10.191.7:8000/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common_8000.md`
  Time: 2022-01-15T08:08:11-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.191.7:8000/ |  | 1 | 200 | 106 | 4 | 1 | text/html |  |
  | .htaccess | http://10.10.191.7:8000/.htaccess |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.191.7:8000/.htpasswd |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.191.7:8000/.hta |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | db | http://10.10.191.7:8000/db | http://10.10.191.7:8000/db/ | 1171 | 301 | 314 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.191.7:8000/index.html |  | 2020 | 200 | 106 | 4 | 1 | text/html |  |
  | repository | http://10.10.191.7:8000/repository | http://10.10.191.7:8000/repository/ | 3377 | 301 | 322 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.191.7:8000/server-status |  | 3588 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  