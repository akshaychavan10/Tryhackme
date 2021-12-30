# FFUF Report

  Command line : `ffuf -u http://10.10.53.209/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-12-28T01:34:57-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.53.209/ |  | 1 | 200 | 11321 | 3503 | 376 | text/html |  |
  | .hta | http://10.10.53.209/.hta |  | 11 | 403 | 291 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.53.209/.htaccess |  | 12 | 403 | 296 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.53.209/.htpasswd |  | 13 | 403 | 296 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.53.209/index.html |  | 2020 | 200 | 11321 | 3503 | 376 | text/html |  |
  | joomla | http://10.10.53.209/joomla | http://10.10.53.209/joomla/ | 2169 | 301 | 313 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | manual | http://10.10.53.209/manual | http://10.10.53.209/manual/ | 2441 | 301 | 313 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | robots.txt | http://10.10.53.209/robots.txt |  | 3436 | 200 | 257 | 46 | 16 | text/plain |  |
  | server-status | http://10.10.53.209/server-status |  | 3588 | 403 | 300 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  