# FFUF Report

  Command line : `ffuf -u http://10.10.5.221/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-12-03T15:06:55-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.5.221/.hta |  | 11 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.5.221/.htpasswd |  | 13 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.5.221/.htaccess |  | 12 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.5.221/ |  | 1 | 200 | 718 | 94 | 33 | text/html |  |
  | index.html | http://10.10.5.221/index.html |  | 2020 | 200 | 718 | 94 | 33 | text/html |  |
  | server-status | http://10.10.5.221/server-status |  | 3588 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  