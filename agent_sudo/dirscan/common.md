# FFUF Report

  Command line : `ffuf -u http://10.10.127.97/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-10-30T01:28:25-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.127.97/ |  | 1 | 200 | 218 | 13 | 19 | text/html; charset=UTF-8 |  |
  | .htpasswd | http://10.10.127.97/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.127.97/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.127.97/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.php | http://10.10.127.97/index.php |  | 2021 | 200 | 218 | 13 | 19 | text/html; charset=UTF-8 |  |
  | server-status | http://10.10.127.97/server-status |  | 3588 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  