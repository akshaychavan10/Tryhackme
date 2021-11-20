# FFUF Report

  Command line : `ffuf -u http://10.10.46.236/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md -fc 404`
  Time: 2021-10-07T03:52:42-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.46.236/ |  | 1 | 200 | 11321 | 3503 | 376 | text/html |  |
  | .htpasswd | http://10.10.46.236/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.46.236/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.46.236/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | content | http://10.10.46.236/content | http://10.10.46.236/content/ | 1027 | 301 | 314 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.46.236/index.html |  | 2020 | 200 | 11321 | 3503 | 376 | text/html |  |
  | server-status | http://10.10.46.236/server-status |  | 3588 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  