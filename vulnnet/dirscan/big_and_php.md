# FFUF Report

  Command line : `ffuf -u http://10.10.142.232/FUZZ -w /usr/share/wordlists/dirb/big.txt -e php -of md -o dirscan/big_and_php.md`
  Time: 2022-01-04T04:42:39-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswdphp | http://10.10.142.232/.htpasswdphp |  | 32 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.142.232/.htaccess |  | 29 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.142.232/.htpasswd |  | 31 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccessphp | http://10.10.142.232/.htaccessphp |  | 30 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | css | http://10.10.142.232/css | http://10.10.142.232/css/ | 11033 | 301 | 312 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | fonts | http://10.10.142.232/fonts | http://10.10.142.232/fonts/ | 15589 | 301 | 314 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | img | http://10.10.142.232/img | http://10.10.142.232/img/ | 18927 | 301 | 312 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | js | http://10.10.142.232/js | http://10.10.142.232/js/ | 20379 | 301 | 311 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.142.232/server-status |  | 32429 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  