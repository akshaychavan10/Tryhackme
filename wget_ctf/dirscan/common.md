# FFUF Report

  Command line : `ffuf -u http://10.10.98.94/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-12-03T15:43:35-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccess | http://10.10.98.94/.htaccess |  | 12 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.98.94/.hta |  | 11 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.98.94/.htpasswd |  | 13 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.98.94/ |  | 1 | 200 | 11374 | 3512 | 379 | text/html |  |
  | index.html | http://10.10.98.94/index.html |  | 2020 | 200 | 11374 | 3512 | 379 | text/html |  |
  | server-status | http://10.10.98.94/server-status |  | 3588 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | sitemap | http://10.10.98.94/sitemap | http://10.10.98.94/sitemap/ | 3692 | 301 | 312 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  