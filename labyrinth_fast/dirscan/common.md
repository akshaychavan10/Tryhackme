# FFUF Report

  Command line : `ffuf -u http://10.10.151.25/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md -fc 302`
  Time: 2021-11-12T00:56:50-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.151.25/.hta |  | 11 | 403 | 1020 | 104 | 43 | text/html; charset=utf-8 |  |
  | .htpasswd | http://10.10.151.25/.htpasswd |  | 13 | 403 | 1020 | 104 | 43 | text/html; charset=utf-8 |  |
  | .htaccess | http://10.10.151.25/.htaccess |  | 12 | 403 | 1020 | 104 | 43 | text/html; charset=utf-8 |  |
  | api | http://10.10.151.25/api | http://10.10.151.25/api/ | 428 | 301 | 232 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | cgi-bin/ | http://10.10.151.25/cgi-bin/ |  | 820 | 403 | 1034 | 105 | 43 | text/html; charset=utf-8 |  |
  | css | http://10.10.151.25/css | http://10.10.151.25/css/ | 1114 | 301 | 232 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | imgs | http://10.10.151.25/imgs | http://10.10.151.25/imgs/ | 2000 | 301 | 233 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | js | http://10.10.151.25/js | http://10.10.151.25/js/ | 2179 | 301 | 231 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | logs | http://10.10.151.25/logs | http://10.10.151.25/logs/ | 2363 | 301 | 233 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  