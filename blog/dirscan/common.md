# FFUF Report

  Command line : `ffuf -u http://10.10.71.171/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-12-22T11:02:53-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.71.171/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.71.171/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.71.171/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.71.171/ |  | 1 | 200 | 32074 | 1631 | 417 | text/html; charset=UTF-8 |  |
  | 0 | http://10.10.71.171/0 | http://10.10.71.171/0/ | 131 | 301 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | admin | http://10.10.71.171/admin | http://blog.thm/wp-admin/ | 286 | 302 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | atom | http://10.10.71.171/atom | http://10.10.71.171/feed/atom/ | 502 | 301 | 0 | 1 | 1 | application/atom&#43;xml; charset=UTF-8 |  |
  | dashboard | http://10.10.71.171/dashboard | http://blog.thm/wp-admin/ | 1156 | 302 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  