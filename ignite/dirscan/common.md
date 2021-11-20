# FFUF Report

  Command line : `ffuf -u http://10.10.83.72/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-11-02T01:59:38-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://10.10.83.72/.htpasswd |  | 13 | 403 | 295 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.83.72/.htaccess |  | 12 | 403 | 295 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.83.72/.hta |  | 11 | 403 | 290 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | assets | http://10.10.83.72/assets | http://10.10.83.72/assets/ | 499 | 301 | 311 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | home | http://10.10.83.72/home |  | 1908 | 200 | 16593 | 770 | 232 | text/html; charset=UTF-8 |  |
  | index.php | http://10.10.83.72/index.php |  | 2021 | 200 | 16593 | 770 | 232 | text/html; charset=UTF-8 |  |
  | index | http://10.10.83.72/index |  | 2017 | 200 | 16593 | 770 | 232 | text/html; charset=UTF-8 |  |
  | offline | http://10.10.83.72/offline |  | 2741 | 200 | 70 | 8 | 2 | text/html; charset=UTF-8 |  |
  | robots.txt | http://10.10.83.72/robots.txt |  | 3436 | 200 | 30 | 3 | 2 | text/plain |  |
  | server-status | http://10.10.83.72/server-status |  | 3588 | 403 | 299 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  