# FFUF Report

  Command line : `ffuf -u http://10.10.22.243/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-12-17T08:01:52-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.22.243/ |  | 1 | 200 | 5954 | 783 | 97 | text/html |  |
  | .hta | http://10.10.22.243/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.22.243/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.22.243/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | css | http://10.10.22.243/css | http://10.10.22.243/css/ | 1114 | 301 | 310 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | img | http://10.10.22.243/img | http://10.10.22.243/img/ | 1998 | 301 | 310 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.22.243/index.html |  | 2020 | 200 | 5954 | 783 | 97 | text/html |  |
  | phpinfo.php | http://10.10.22.243/phpinfo.php |  | 2946 | 200 | 94862 | 4706 | 1160 | text/html; charset=UTF-8 |  |
  | server-status | http://10.10.22.243/server-status |  | 3588 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  