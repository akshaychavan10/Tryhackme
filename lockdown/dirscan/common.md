# FFUF Report

  Command line : `ffuf -u http://10.10.62.135/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md -fc 404`
  Time: 2021-10-04T03:47:58-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.62.135/ |  | 1 | 200 | 17762 | 3840 | 397 | text/html; charset=UTF-8 |  |
  | .htpasswd | http://10.10.62.135/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | admin | http://10.10.62.135/admin | http://10.10.62.135/admin/ | 286 | 301 | 312 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.62.135/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.62.135/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | build | http://10.10.62.135/build | http://10.10.62.135/build/ | 707 | 301 | 312 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | classes | http://10.10.62.135/classes | http://10.10.62.135/classes/ | 885 | 301 | 314 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | dist | http://10.10.62.135/dist | http://10.10.62.135/dist/ | 1300 | 301 | 311 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | inc | http://10.10.62.135/inc | http://10.10.62.135/inc/ | 2010 | 301 | 310 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.php | http://10.10.62.135/index.php |  | 2021 | 200 | 17762 | 3840 | 397 | text/html; charset=UTF-8 |  |
  | libs | http://10.10.62.135/libs | http://10.10.62.135/libs/ | 2278 | 301 | 311 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | plugins | http://10.10.62.135/plugins | http://10.10.62.135/plugins/ | 3003 | 301 | 314 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.62.135/server-status |  | 3588 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | temp | http://10.10.62.135/temp | http://10.10.62.135/temp/ | 3991 | 301 | 311 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | uploads | http://10.10.62.135/uploads | http://10.10.62.135/uploads/ | 4216 | 301 | 314 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  