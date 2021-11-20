# FFUF Report

  Command line : `ffuf -u http://10.10.62.135/inc/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/inc.md -fc 404`
  Time: 2021-10-04T04:37:42-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.62.135/inc/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.62.135/inc/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.62.135/inc/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.62.135/inc/ |  | 1 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  