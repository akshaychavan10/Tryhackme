# FFUF Report

  Command line : `ffuf -u http://10.10.139.167/45kra24zxs28v3yd/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o hidden.md`
  Time: 2021-12-16T03:41:06-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.139.167/45kra24zxs28v3yd/ |  | 1 | 200 | 418 | 45 | 16 | text/html |  |
  | administrator | http://10.10.139.167/45kra24zxs28v3yd/administrator | http://10.10.139.167/45kra24zxs28v3yd/administrator/ | 319 | 301 | 339 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.139.167/45kra24zxs28v3yd/.hta |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.139.167/45kra24zxs28v3yd/.htaccess |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.139.167/45kra24zxs28v3yd/.htpasswd |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.139.167/45kra24zxs28v3yd/index.html |  | 2020 | 200 | 418 | 45 | 16 | text/html |  |
  