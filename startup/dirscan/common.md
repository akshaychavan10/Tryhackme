# FFUF Report

  Command line : `ffuf -u http://10.10.202.34/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-12-03T12:00:01-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://10.10.202.34/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.202.34/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.202.34/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.202.34/ |  | 1 | 200 | 808 | 136 | 21 | text/html |  |
  | files | http://10.10.202.34/files | http://10.10.202.34/files/ | 1605 | 301 | 312 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.202.34/index.html |  | 2020 | 200 | 808 | 136 | 21 | text/html |  |
  | server-status | http://10.10.202.34/server-status |  | 3588 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  