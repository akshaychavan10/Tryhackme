# FFUF Report

  Command line : `ffuf -u http://10.10.25.46/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-12-01T13:37:05-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.25.46/ |  | 1 | 200 | 1414 | 217 | 24 | text/html |  |
  | .hta | http://10.10.25.46/.hta |  | 11 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.25.46/.htaccess |  | 12 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.25.46/.htpasswd |  | 13 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | css | http://10.10.25.46/css | http://10.10.25.46/css/ | 1114 | 301 | 308 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.25.46/index.html |  | 2020 | 200 | 1414 | 217 | 24 | text/html |  |
  | server-status | http://10.10.25.46/server-status |  | 3588 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  