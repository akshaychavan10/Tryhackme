# FFUF Report

  Command line : `ffuf -u http://10.10.44.112/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md -fc 404`
  Time: 2021-10-07T08:43:27-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.44.112/.hta |  | 11 | 403 | 291 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.44.112/ |  | 1 | 200 | 1062 | 148 | 38 | text/html |  |
  | .htaccess | http://10.10.44.112/.htaccess |  | 12 | 403 | 296 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.44.112/.htpasswd |  | 13 | 403 | 296 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | assets | http://10.10.44.112/assets | http://10.10.44.112/assets/ | 499 | 301 | 313 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.44.112/index.html |  | 2020 | 200 | 1062 | 148 | 38 | text/html |  |
  | robots.txt | http://10.10.44.112/robots.txt |  | 3436 | 200 | 17 | 1 | 2 | text/plain |  |
  | server-status | http://10.10.44.112/server-status |  | 3588 | 403 | 300 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  