# FFUF Report

  Command line : `ffuf -u http://10.10.183.21/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md -fc 404`
  Time: 2021-10-07T03:41:13-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.183.21/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.183.21/ |  | 1 | 200 | 969 | 135 | 31 | text/html |  |
  | .htpasswd | http://10.10.183.21/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.183.21/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | images | http://10.10.183.21/images | http://10.10.183.21/images/ | 1991 | 301 | 313 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.183.21/index.html |  | 2020 | 200 | 969 | 135 | 31 | text/html |  |
  | server-status | http://10.10.183.21/server-status |  | 3588 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  