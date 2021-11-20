# FFUF Report

  Command line : `ffuf -u http://10.10.125.32/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md -fc 404`
  Time: 2021-10-07T03:05:52-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.125.32/ |  | 1 | 200 | 616 | 115 | 26 | text/html; charset=UTF-8 |  |
  | .hta | http://10.10.125.32/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.125.32/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.125.32/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | css | http://10.10.125.32/css | http://10.10.125.32/css/ | 1114 | 301 | 310 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.php | http://10.10.125.32/index.php |  | 2021 | 200 | 616 | 115 | 26 | text/html; charset=UTF-8 |  |
  | js | http://10.10.125.32/js | http://10.10.125.32/js/ | 2179 | 301 | 309 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | panel | http://10.10.125.32/panel | http://10.10.125.32/panel/ | 2850 | 301 | 312 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.125.32/server-status |  | 3588 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | uploads | http://10.10.125.32/uploads | http://10.10.125.32/uploads/ | 4216 | 301 | 314 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  