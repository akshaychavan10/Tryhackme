# FFUF Report

  Command line : `ffuf -u http://10.10.116.171/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-11-23T03:11:37-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccess | http://10.10.116.171/.htaccess |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.116.171/.htpasswd |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.116.171/index.html |  | 2020 | 200 | 10918 | 3499 | 376 | text/html |  |
  | index.php | http://10.10.116.171/index.php |  | 2021 | 200 | 329 | 54 | 17 | text/html; charset=UTF-8 |  |
  | info.php | http://10.10.116.171/info.php |  | 2041 | 200 | 69037 | 3292 | 760 | text/html; charset=UTF-8 |  |
  