# FFUF Report

  Command line : `ffuf -u http://10.10.231.37/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2022-01-02T08:48:14-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccess | http://10.10.231.37/.htaccess |  | 12 | 403 | 199 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.231.37/.hta |  | 11 | 403 | 199 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.231.37/ |  | 1 | 200 | 2506 | 365 | 60 | text/html |  |
  | .htpasswd | http://10.10.231.37/.htpasswd |  | 13 | 403 | 199 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.231.37/index.html |  | 2020 | 200 | 2506 | 365 | 60 | text/html |  |
  | server-status | http://10.10.231.37/server-status |  | 3588 | 403 | 199 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  