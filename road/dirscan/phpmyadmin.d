# FFUF Report

  Command line : `ffuf -u http://10.10.121.226/phpMyAdmin/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/phpmyadmin.d`
  Time: 2021-11-27T01:16:10-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.121.226/phpMyAdmin/.hta |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.121.226/phpMyAdmin/.htpasswd |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.121.226/phpMyAdmin/.htaccess |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | ChangeLog | http://10.10.121.226/phpMyAdmin/ChangeLog |  | 843 | 200 | 41123 | 6834 | 566 |  |  |
  | doc | http://10.10.121.226/phpMyAdmin/doc | http://10.10.121.226/phpMyAdmin/doc/ | 1313 | 301 | 323 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | examples | http://10.10.121.226/phpMyAdmin/examples | http://10.10.121.226/phpMyAdmin/examples/ | 1519 | 301 | 328 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | favicon.ico | http://10.10.121.226/phpMyAdmin/favicon.ico |  | 1575 | 200 | 22486 | 70 | 98 | image/vnd.microsoft.icon |  |
  | js | http://10.10.121.226/phpMyAdmin/js | http://10.10.121.226/phpMyAdmin/js/ | 2179 | 301 | 322 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | locale | http://10.10.121.226/phpMyAdmin/locale | http://10.10.121.226/phpMyAdmin/locale/ | 2328 | 301 | 326 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | libraries | http://10.10.121.226/phpMyAdmin/libraries | http://10.10.121.226/phpMyAdmin/libraries/ | 2276 | 301 | 329 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | LICENSE | http://10.10.121.226/phpMyAdmin/LICENSE |  | 2282 | 200 | 18092 | 3133 | 340 |  |  |
  | README | http://10.10.121.226/phpMyAdmin/README |  | 3295 | 200 | 1520 | 181 | 53 |  |  |
  | robots.txt | http://10.10.121.226/phpMyAdmin/robots.txt |  | 3436 | 200 | 26 | 3 | 3 | text/plain |  |
  | sql | http://10.10.121.226/phpMyAdmin/sql | http://10.10.121.226/phpMyAdmin/sql/ | 3793 | 301 | 323 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | templates | http://10.10.121.226/phpMyAdmin/templates | http://10.10.121.226/phpMyAdmin/templates/ | 3995 | 301 | 329 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | themes | http://10.10.121.226/phpMyAdmin/themes | http://10.10.121.226/phpMyAdmin/themes/ | 4037 | 301 | 326 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | tmp | http://10.10.121.226/phpMyAdmin/tmp | http://10.10.121.226/phpMyAdmin/tmp/ | 4069 | 301 | 323 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | vendor | http://10.10.121.226/phpMyAdmin/vendor | http://10.10.121.226/phpMyAdmin/vendor/ | 4286 | 301 | 326 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  