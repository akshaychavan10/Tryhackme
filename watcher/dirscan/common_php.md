# FFUF Report

  Command line : `ffuf -u http://10.10.150.61/FUZZ.php -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common_php.md`
  Time: 2021-12-18T10:16:07-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccess | http://10.10.150.61/.htaccess.php |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.150.61/.htpasswd.php |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.150.61/.hta.php |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.150.61/.php |  | 1 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index | http://10.10.150.61/index.php |  | 2017 | 200 | 4826 | 1154 | 135 | text/html; charset=UTF-8 |  |
  | post | http://10.10.150.61/post.php |  | 3051 | 200 | 2422 | 465 | 84 | text/html; charset=UTF-8 |  |
  