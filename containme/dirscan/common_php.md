# FFUF Report

  Command line : `ffuf -u http://10.10.116.171/FUZZ.php -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common_php.md`
  Time: 2021-11-23T03:16:36-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccess | http://10.10.116.171/.htaccess.php |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.116.171/.hta.php |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.116.171/.htpasswd.php |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index | http://10.10.116.171/index.php |  | 2017 | 200 | 329 | 54 | 17 | text/html; charset=UTF-8 |  |
  | info | http://10.10.116.171/info.php |  | 2040 | 200 | 69038 | 3292 | 760 | text/html; charset=UTF-8 |  |
  