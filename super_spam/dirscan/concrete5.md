# FFUF Report

  Command line : `ffuf -u http://10.10.208.172/concrete5/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/concrete5.md`
  Time: 2021-12-07T10:19:19-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.208.172/concrete5/.hta |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.208.172/concrete5/.htaccess |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.208.172/concrete5/ |  | 1 | 200 | 22231 | 5761 | 425 | text/html; charset=UTF-8 |  |
  | .htpasswd | http://10.10.208.172/concrete5/.htpasswd |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | application | http://10.10.208.172/concrete5/application | http://10.10.208.172/concrete5/application/ | 447 | 301 | 330 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | concrete | http://10.10.208.172/concrete5/concrete | http://10.10.208.172/concrete5/concrete/ | 989 | 301 | 327 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.php | http://10.10.208.172/concrete5/index.php |  | 2021 | 200 | 22231 | 5761 | 425 | text/html; charset=UTF-8 |  |
  | packages | http://10.10.208.172/concrete5/packages | http://10.10.208.172/concrete5/packages/ | 2830 | 301 | 327 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | robots.txt | http://10.10.208.172/concrete5/robots.txt |  | 3436 | 200 | 532 | 18 | 18 | text/plain |  |
  | updates | http://10.10.208.172/concrete5/updates | http://10.10.208.172/concrete5/updates/ | 4203 | 301 | 326 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  