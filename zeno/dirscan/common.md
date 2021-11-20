# FFUF Report

  Command line : `ffuf -u http://10.10.180.155:12340/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md -fc 404`
  Time: 2021-10-23T11:14:37-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.180.155:12340/.hta |  | 11 | 403 | 206 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.180.155:12340/.htpasswd |  | 13 | 403 | 211 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.180.155:12340/.htaccess |  | 12 | 403 | 211 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.180.155:12340/ |  | 1 | 200 | 3897 | 120 | 15 | text/html; charset=UTF-8 |  |
  | index.html | http://10.10.180.155:12340/index.html |  | 2020 | 200 | 3897 | 120 | 15 | text/html; charset=UTF-8 |  |
  