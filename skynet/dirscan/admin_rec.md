# FFUF Report

  Command line : `ffuf -u http://10.10.139.167/admin/FUZZ -e php -w /usr/share/wordlists/dirb/big.txt -of md -o ../dirscan/admin_rec.md`
  Time: 2021-12-16T02:37:21-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://10.10.139.167/admin/.htpasswd |  | 31 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccessphp | http://10.10.139.167/admin/.htaccessphp |  | 30 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.139.167/admin/.htaccess |  | 29 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswdphp | http://10.10.139.167/admin/.htpasswdphp |  | 32 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  