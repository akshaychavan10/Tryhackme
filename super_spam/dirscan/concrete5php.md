# FFUF Report

  Command line : `ffuf -u http://10.10.208.172/concrete5/FUZZ.php -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/concrete5php.md`
  Time: 2021-12-07T10:18:21-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.208.172/concrete5/.php |  | 1 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.208.172/concrete5/.hta.php |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.208.172/concrete5/.htpasswd.php |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.208.172/concrete5/.htaccess.php |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index | http://10.10.208.172/concrete5/index.php |  | 2017 | 200 | 22231 | 5761 | 425 | text/html; charset=UTF-8 |  |
  