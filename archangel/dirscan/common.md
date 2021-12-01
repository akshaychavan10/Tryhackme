# FFUF Report

  Command line : `ffuf -u http://10.10.147.38/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-11-30T10:08:00-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.147.38/ |  | 1 | 200 | 19188 | 2646 | 321 | text/html |  |
  | .hta | http://10.10.147.38/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.147.38/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.147.38/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | flags | http://10.10.147.38/flags | http://10.10.147.38/flags/ | 1629 | 301 | 312 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | images | http://10.10.147.38/images | http://10.10.147.38/images/ | 1991 | 301 | 313 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.147.38/index.html |  | 2020 | 200 | 19188 | 2646 | 321 | text/html |  |
  | layout | http://10.10.147.38/layout | http://10.10.147.38/layout/ | 2253 | 301 | 313 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | pages | http://10.10.147.38/pages | http://10.10.147.38/pages/ | 2844 | 301 | 312 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.147.38/server-status |  | 3588 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  