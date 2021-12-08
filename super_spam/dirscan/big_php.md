# FFUF Report

  Command line : `ffuf -u http://10.10.7.112/FUZZ.php -w /usr/share/wordlists/dirb/big.txt -of md -o dirscan/big_php.md`
  Time: 2021-12-07T09:42:44-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://10.10.7.112/.htpasswd.php |  | 16 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.7.112/.htaccess.php |  | 15 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  