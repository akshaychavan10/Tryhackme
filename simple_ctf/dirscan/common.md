# FFUF Report

  Command line : `ffuf -u http://10.10.38.105/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-10-27T01:05:56-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.38.105/ |  | 1 | 200 | 11321 | 3503 | 376 | text/html |  |
  | .htpasswd | http://10.10.38.105/.htpasswd |  | 13 | 403 | 296 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.38.105/.htaccess |  | 12 | 403 | 296 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.38.105/.hta |  | 11 | 403 | 291 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.38.105/index.html |  | 2020 | 200 | 11321 | 3503 | 376 | text/html |  |
  | robots.txt | http://10.10.38.105/robots.txt |  | 3436 | 200 | 929 | 176 | 33 | text/plain |  |
  | server-status | http://10.10.38.105/server-status |  | 3588 | 403 | 300 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | simple | http://10.10.38.105/simple | http://10.10.38.105/simple/ | 3679 | 301 | 313 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  