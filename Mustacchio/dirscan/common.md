# FFUF Report

  Command line : `ffuf -u http://10.10.41.73/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-11-22T08:47:10-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.41.73/ |  | 1 | 200 | 1752 | 77 | 73 | text/html |  |
  | .htpasswd | http://10.10.41.73/.htpasswd |  | 13 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.41.73/.hta |  | 11 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.41.73/.htaccess |  | 12 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | custom | http://10.10.41.73/custom | http://10.10.41.73/custom/ | 1121 | 301 | 311 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | fonts | http://10.10.41.73/fonts | http://10.10.41.73/fonts/ | 1648 | 301 | 310 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | images | http://10.10.41.73/images | http://10.10.41.73/images/ | 1991 | 301 | 311 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.41.73/index.html |  | 2020 | 200 | 1752 | 77 | 73 | text/html |  |
  | robots.txt | http://10.10.41.73/robots.txt |  | 3436 | 200 | 28 | 3 | 3 | text/plain |  |
  | server-status | http://10.10.41.73/server-status |  | 3588 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  