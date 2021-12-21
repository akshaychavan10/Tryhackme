# FFUF Report

  Command line : `ffuf -u http://10.10.22.243:8080/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/8080_common.md -fc 401`
  Time: 2021-12-17T08:16:48-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccess | http://10.10.22.243:8080/.htaccess |  | 12 | 403 | 279 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.22.243:8080/.hta |  | 11 | 403 | 279 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.22.243:8080/.htpasswd |  | 13 | 403 | 279 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.22.243:8080/server-status |  | 3588 | 403 | 279 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  