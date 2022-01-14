# FFUF Report

  Command line : `ffuf -u http://10.10.67.114/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2022-01-13T08:32:44-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccess | http://10.10.67.114/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.67.114/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.67.114/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | admin | http://10.10.67.114/admin |  | 286 | 401 | 459 | 42 | 15 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.67.114/ |  | 1 | 200 | 747 | 154 | 20 | text/html; charset=UTF-8 |  |
  | images | http://10.10.67.114/images | http://10.10.67.114/images/ | 1991 | 301 | 313 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.php | http://10.10.67.114/index.php |  | 2021 | 200 | 747 | 154 | 20 | text/html; charset=UTF-8 |  |
  | js | http://10.10.67.114/js | http://10.10.67.114/js/ | 2179 | 301 | 309 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.67.114/server-status |  | 3588 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | tmp | http://10.10.67.114/tmp | http://10.10.67.114/tmp/ | 4069 | 301 | 310 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  