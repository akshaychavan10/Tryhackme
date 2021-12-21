# FFUF Report

  Command line : `ffuf -u http://10.10.22.243/FUZZ.php -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common_php.md`
  Time: 2021-12-17T08:02:30-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.22.243/.php |  | 1 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.22.243/.htaccess.php |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.22.243/.htpasswd.php |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.22.243/.hta.php |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | phpinfo | http://10.10.22.243/phpinfo.php |  | 2945 | 200 | 94862 | 4706 | 1160 | text/html; charset=UTF-8 |  |
  