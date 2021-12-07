# FFUF Report

  Command line : `ffuf -u http://10.10.115.22/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-12-06T11:04:39-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.115.22/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.115.22/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.115.22/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.115.22/server-status |  | 3588 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  