# FFUF Report

  Command line : `ffuf -u http://10.10.142.232/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2022-01-04T04:33:52-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.142.232/ |  | 1 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | .htaccess | http://10.10.142.232/.htaccess |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.142.232/.htpasswd |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.142.232/.hta |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | css | http://10.10.142.232/css | http://10.10.142.232/css/ | 1114 | 301 | 312 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | fonts | http://10.10.142.232/fonts | http://10.10.142.232/fonts/ | 1648 | 301 | 314 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | img | http://10.10.142.232/img | http://10.10.142.232/img/ | 1998 | 301 | 312 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.php | http://10.10.142.232/index.php |  | 2021 | 200 | 5829 | 1689 | 142 | text/html; charset=UTF-8 |  |
  | js | http://10.10.142.232/js | http://10.10.142.232/js/ | 2179 | 301 | 311 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.142.232/server-status |  | 3588 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  