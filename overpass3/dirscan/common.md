# FFUF Report

  Command line : `ffuf -u http://10.10.162.71/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-12-07T14:57:15-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.162.71/ |  | 1 | 200 | 1770 | 443 | 37 | text/html; charset=UTF-8 |  |
  | .hta | http://10.10.162.71/.hta |  | 11 | 403 | 213 | 16 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.162.71/.htpasswd |  | 13 | 403 | 218 | 16 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.162.71/.htaccess |  | 12 | 403 | 218 | 16 | 10 | text/html; charset=iso-8859-1 |  |
  | backups | http://10.10.162.71/backups | http://10.10.162.71/backups/ | 568 | 301 | 236 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | cgi-bin/ | http://10.10.162.71/cgi-bin/ |  | 820 | 403 | 217 | 16 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.162.71/index.html |  | 2020 | 200 | 1770 | 443 | 37 | text/html; charset=UTF-8 |  |
  