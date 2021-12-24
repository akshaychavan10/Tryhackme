# FFUF Report

  Command line : `ffuf -u http://10.10.151.146/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common_with_extention.md -e sh`
  Time: 2021-12-22T09:44:30-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.151.146/.hta |  | 21 | 403 | 284 | 21 | 11 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.151.146/.htpasswd |  | 25 | 403 | 289 | 21 | 11 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.151.146/.htaccess |  | 23 | 403 | 289 | 21 | 11 | text/html; charset=iso-8859-1 |  |
  | .htpasswdsh | http://10.10.151.146/.htpasswdsh |  | 26 | 403 | 291 | 21 | 11 | text/html; charset=iso-8859-1 |  |
  | .htash | http://10.10.151.146/.htash |  | 22 | 403 | 286 | 21 | 11 | text/html; charset=iso-8859-1 |  |
  | .htaccesssh | http://10.10.151.146/.htaccesssh |  | 24 | 403 | 291 | 21 | 11 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.151.146/ |  | 1 | 200 | 3025 | 285 | 43 | text/html |  |
  | admin | http://10.10.151.146/admin | http://10.10.151.146/admin/ | 571 | 301 | 313 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | backup | http://10.10.151.146/backup | http://10.10.151.146/backup/ | 1125 | 301 | 314 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | cgi-bin | http://10.10.151.146/cgi-bin | http://10.10.151.146/cgi-bin/ | 1637 | 301 | 315 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | cgi-bin/ | http://10.10.151.146/cgi-bin/ |  | 1639 | 403 | 288 | 21 | 11 | text/html; charset=iso-8859-1 |  |
  | css | http://10.10.151.146/css | http://10.10.151.146/css/ | 2227 | 301 | 311 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | img | http://10.10.151.146/img | http://10.10.151.146/img/ | 3995 | 301 | 311 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.151.146/index.html |  | 4039 | 200 | 3025 | 285 | 43 | text/html |  |
  | js | http://10.10.151.146/js | http://10.10.151.146/js/ | 4357 | 301 | 310 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | robots.txt | http://10.10.151.146/robots.txt |  | 6871 | 200 | 38 | 7 | 2 | text/plain |  |
  | secret | http://10.10.151.146/secret | http://10.10.151.146/secret/ | 7073 | 301 | 314 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.151.146/server-status |  | 7175 | 403 | 293 | 21 | 11 | text/html; charset=iso-8859-1 |  |
  | uploads | http://10.10.151.146/uploads | http://10.10.151.146/uploads/ | 8431 | 301 | 315 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  