# FFUF Report

  Command line : `ffuf -u http://10.10.121.226/v2/admin/FUZZ.php -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/v2_admin_php.md`
  Time: 2021-11-27T01:11:22-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://10.10.121.226/v2/admin/.htpasswd.php |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.121.226/v2/admin/.php |  | 1 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.121.226/v2/admin/.htaccess.php |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index | http://10.10.121.226/v2/admin/index.php |  | 2017 | 200 | 32 | 5 | 2 | text/html; charset=UTF-8 |  |
  | logout | http://10.10.121.226/v2/admin/logout.php | login.html | 2362 | 302 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | reg | http://10.10.121.226/v2/admin/reg.php |  | 3337 | 200 | 28 | 5 | 1 | text/html; charset=UTF-8 |  |
  