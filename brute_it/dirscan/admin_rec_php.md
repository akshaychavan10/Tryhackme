# FFUF Report

  Command line : `ffuf -u http://10.10.213.146/admin/FUZZ.php -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/admin_rec_php.md`
  Time: 2021-12-03T16:58:56-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.213.146/admin/.php |  | 1 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.213.146/admin/.htaccess.php |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.213.146/admin/.hta.php |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.213.146/admin/.htpasswd.php |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index | http://10.10.213.146/admin/index.php |  | 2017 | 200 | 671 | 159 | 29 | text/html; charset=UTF-8 |  |
  