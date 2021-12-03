# FFUF Report

  Command line : `ffuf -u http://10.10.25.46/d1r3c70ry_center/claim/FUZZ.php -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/center_php.md`
  Time: 2021-12-01T14:18:43-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.25.46/d1r3c70ry_center/claim/.php |  | 1 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.25.46/d1r3c70ry_center/claim/.hta.php |  | 11 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.25.46/d1r3c70ry_center/claim/.htaccess.php |  | 12 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.25.46/d1r3c70ry_center/claim/.htpasswd.php |  | 13 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index | http://10.10.25.46/d1r3c70ry_center/claim/index.php |  | 2017 | 200 | 591 | 75 | 17 | text/html; charset=UTF-8 |  |
  