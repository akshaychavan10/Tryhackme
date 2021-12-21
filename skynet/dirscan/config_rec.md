# FFUF Report

  Command line : `ffuf -u http://10.10.139.167/config/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/config_rec.md`
  Time: 2021-12-16T02:36:02-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.139.167/config/ |  | 1 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.139.167/config/.hta |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.139.167/config/.htpasswd |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.139.167/config/.htaccess |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  