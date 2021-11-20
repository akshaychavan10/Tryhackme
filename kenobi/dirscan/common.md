# FFUF Report

  Command line : `ffuf -u http://10.10.154.46/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md -fc 404`
  Time: 2021-10-14T10:49:59-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.154.46/ |  | 1 | 200 | 200 | 18 | 19 | text/html |  |
  | .htpasswd | http://10.10.154.46/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.154.46/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.154.46/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.154.46/index.html |  | 2020 | 200 | 200 | 18 | 19 | text/html |  |
  | robots.txt | http://10.10.154.46/robots.txt |  | 3436 | 200 | 36 | 3 | 3 | text/plain |  |
  | server-status | http://10.10.154.46/server-status |  | 3588 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  