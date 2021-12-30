# FFUF Report

  Command line : `ffuf -u http://10.10.94.172/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-12-27T04:07:20-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.94.172/ |  | 1 | 200 | 10818 | 3408 | 368 | text/html; charset=UTF-8 |  |
  | .htaccess | http://10.10.94.172/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.94.172/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.94.172/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | admin | http://10.10.94.172/admin | http://10.10.94.172/admin/ | 286 | 301 | 312 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.php | http://10.10.94.172/index.php |  | 2021 | 200 | 10818 | 3408 | 368 | text/html; charset=UTF-8 |  |
  | server-status | http://10.10.94.172/server-status |  | 3588 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  