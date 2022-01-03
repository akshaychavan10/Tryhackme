# FFUF Report

  Command line : `ffuf -u http://10.10.231.37/FUZZ -w /usr/share/wordlists/dirb/big.txt -of md -o dirscan/big.md`
  Time: 2022-01-02T08:50:56-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://10.10.231.37/.htpasswd |  | 16 | 403 | 199 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.231.37/.htaccess |  | 15 | 403 | 199 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | island | http://10.10.231.37/island | http://10.10.231.37/island/ | 9908 | 301 | 235 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.231.37/server-status |  | 16215 | 403 | 199 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  