# FFUF Report

  Command line : `ffuf -u http://10.10.113.52:3333/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md -fc 404`
  Time: 2021-10-14T09:54:34-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://10.10.113.52:3333/.htpasswd |  | 13 | 403 | 298 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.113.52:3333/.htaccess |  | 12 | 403 | 298 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.113.52:3333/.hta |  | 11 | 403 | 293 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.113.52:3333/ |  | 1 | 200 | 33014 | 8161 | 653 | text/html |  |
  | css | http://10.10.113.52:3333/css | http://10.10.113.52:3333/css/ | 1114 | 301 | 317 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | fonts | http://10.10.113.52:3333/fonts | http://10.10.113.52:3333/fonts/ | 1648 | 301 | 319 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | images | http://10.10.113.52:3333/images | http://10.10.113.52:3333/images/ | 1991 | 301 | 320 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.113.52:3333/index.html |  | 2020 | 200 | 33014 | 8161 | 653 | text/html |  |
  | internal | http://10.10.113.52:3333/internal | http://10.10.113.52:3333/internal/ | 2085 | 301 | 322 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | js | http://10.10.113.52:3333/js | http://10.10.113.52:3333/js/ | 2179 | 301 | 316 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.113.52:3333/server-status |  | 3588 | 403 | 302 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  