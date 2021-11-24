# FFUF Report

  Command line : `ffuf -u http://10.10.117.211/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-11-24T04:16:21-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccess | http://10.10.117.211/.htaccess |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.117.211/ |  | 1 | 200 | 35184 | 16992 | 644 | text/html |  |
  | .htpasswd | http://10.10.117.211/.htpasswd |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.117.211/.hta |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | css | http://10.10.117.211/css | http://10.10.117.211/css/ | 1114 | 301 | 312 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | fonts | http://10.10.117.211/fonts | http://10.10.117.211/fonts/ | 1648 | 301 | 314 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | images | http://10.10.117.211/images | http://10.10.117.211/images/ | 1991 | 301 | 315 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.117.211/index.html |  | 2020 | 200 | 35184 | 16992 | 644 | text/html |  |
  | js | http://10.10.117.211/js | http://10.10.117.211/js/ | 2179 | 301 | 311 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | secret | http://10.10.117.211/secret | http://10.10.117.211/secret/ | 3537 | 301 | 315 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.117.211/server-status |  | 3588 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  