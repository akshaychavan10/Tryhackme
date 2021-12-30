# FFUF Report

  Command line : `ffuf -u http://10.10.94.172/admin/FUZZ -w /usr/share/wordlists/dirb/big.txt -e php -of md -o dirscan/big_common_admin_common_and_php.md`
  Time: 2021-12-27T05:11:20-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswdphp | http://10.10.94.172/admin/.htpasswdphp |  | 32 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.94.172/admin/.htpasswd |  | 31 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.94.172/admin/.htaccess |  | 29 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccessphp | http://10.10.94.172/admin/.htaccessphp |  | 30 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  