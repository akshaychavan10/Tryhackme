# FFUF Report

  Command line : `ffuf -u http://10.10.94.172/admin/FUZZ.php -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common_admin_php.md`
  Time: 2021-12-27T04:10:20-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.94.172/admin/.php |  | 1 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.94.172/admin/.htaccess.php |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.94.172/admin/.htpasswd.php |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.94.172/admin/.hta.php |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | config | http://10.10.94.172/admin/config.php |  | 994 | 200 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | index | http://10.10.94.172/admin/index.php |  | 2017 | 200 | 132 | 15 | 1 | text/html; charset=UTF-8 |  |
  