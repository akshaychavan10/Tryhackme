# FFUF Report

  Command line : `ffuf -u http://10.10.121.226/phpMyAdmin/FUZZ.php -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/phpmyadmin_php.d`
  Time: 2021-11-27T01:28:10-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.121.226/phpMyAdmin/.php |  | 1 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.121.226/phpMyAdmin/.htaccess.php |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.121.226/phpMyAdmin/.htpasswd.php |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.121.226/phpMyAdmin/.hta.php |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  