# FFUF Report

  Command line : `ffuf -u http://10.10.22.243:8080/FUZZ.php -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/8080_common_php.md -fc 401`
  Time: 2021-12-17T08:39:49-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.22.243:8080/.php |  | 1 | 403 | 279 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.22.243:8080/.hta.php |  | 11 | 403 | 279 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.22.243:8080/.htaccess.php |  | 12 | 403 | 279 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.22.243:8080/.htpasswd.php |  | 13 | 403 | 279 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  