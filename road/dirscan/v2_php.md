# FFUF Report

  Command line : `ffuf -u http://10.10.121.226/v2/FUZZ.php -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/v2_php.md`
  Time: 2021-11-27T01:08:39-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.121.226/v2/.hta.php |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.121.226/v2/.htaccess.php |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.121.226/v2/.htpasswd.php |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.121.226/v2/.php |  | 1 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index | http://10.10.121.226/v2/index.php | /v2/admin/login.html | 2017 | 302 | 20178 | 6599 | 554 | text/html; charset=UTF-8 |  |
  | lostpassword | http://10.10.121.226/v2/lostpassword.php |  | 2369 | 200 | 22 | 3 | 1 | text/html; charset=UTF-8 |  |
  | profile | http://10.10.121.226/v2/profile.php | /v2/admin/login.html | 3160 | 302 | 26751 | 4593 | 722 | text/html; charset=UTF-8 |  |
  