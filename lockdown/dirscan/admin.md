# FFUF Report

  Command line : `ffuf -u http://10.10.62.135/admin/FUZZ.php -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/admin.md -fc 404`
  Time: 2021-10-04T03:57:26-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.62.135/admin/.php |  | 1 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.62.135/admin/.htpasswd.php |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.62.135/admin/.htaccess.php |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.62.135/admin/.hta.php |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index | http://10.10.62.135/admin/index.php |  | 2017 | 200 | 21734 | 5468 | 453 | text/html; charset=UTF-8 |  |
  | login | http://10.10.62.135/admin/login.php |  | 2347 | 200 | 5657 | 755 | 122 | text/html; charset=UTF-8 |  |
  