# FFUF Report

  Command line : `ffuf -u http://10.10.150.61/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-12-18T10:03:06-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.150.61/ |  | 1 | 200 | 4826 | 1154 | 135 | text/html; charset=UTF-8 |  |
  | .htaccess | http://10.10.150.61/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.150.61/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.150.61/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | css | http://10.10.150.61/css | http://10.10.150.61/css/ | 1114 | 301 | 310 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | images | http://10.10.150.61/images | http://10.10.150.61/images/ | 1991 | 301 | 313 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.php | http://10.10.150.61/index.php |  | 2021 | 200 | 4826 | 1154 | 135 | text/html; charset=UTF-8 |  |
  | robots.txt | http://10.10.150.61/robots.txt |  | 3436 | 200 | 69 | 4 | 4 | text/plain |  |
  | server-status | http://10.10.150.61/server-status |  | 3588 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  