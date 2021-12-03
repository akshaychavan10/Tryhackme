# FFUF Report

  Command line : `ffuf -u http://10.10.25.46/d1r3c70ry_center/claim/FUZZ.php -w /usr/share/wordlists/dirb/big.txt -of md -o dirscan/big_php.md`
  Time: 2021-12-01T14:34:02-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://10.10.25.46/d1r3c70ry_center/claim/.htpasswd.php |  | 16 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.25.46/d1r3c70ry_center/claim/.htaccess.php |  | 15 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index | http://10.10.25.46/d1r3c70ry_center/claim/index.php |  | 9563 | 200 | 591 | 75 | 17 | text/html; charset=UTF-8 |  |
  