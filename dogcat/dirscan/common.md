# FFUF Report

  Command line : `ffuf -u http://10.10.222.120/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-12-01T00:38:41-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.222.120/ |  | 1 | 200 | 418 | 71 | 20 | text/html; charset=UTF-8 |  |
  | .htaccess | http://10.10.222.120/.htaccess |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.222.120/.hta |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.222.120/.htpasswd |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | cats | http://10.10.222.120/cats | http://10.10.222.120/cats/ | 789 | 301 | 313 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.php | http://10.10.222.120/index.php |  | 2021 | 200 | 418 | 71 | 20 | text/html; charset=UTF-8 |  |
  | server-status | http://10.10.222.120/server-status |  | 3588 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  