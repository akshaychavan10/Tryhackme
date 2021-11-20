# FFUF Report

  Command line : `ffuf -u http://10.10.52.237/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md -fc 404`
  Time: 2021-10-20T03:11:13-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.52.237/.hta |  | 11 | 403 | 213 | 16 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.52.237/.htpasswd |  | 13 | 403 | 218 | 16 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.52.237/.htaccess |  | 12 | 403 | 218 | 16 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.52.237/ |  | 1 | 200 | 1188 | 189 | 31 | text/html |  |
  | admin | http://10.10.52.237/admin | http://10.10.52.237/admin/ | 286 | 301 | 234 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  