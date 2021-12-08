# FFUF Report

  Command line : `ffuf -u http://10.10.7.112/FUZZ -w /usr/share/wordlists/dirb/big.txt -of md -o dirscan/big.md`
  Time: 2021-12-07T09:45:48-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccess | http://10.10.7.112/.htaccess |  | 15 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.7.112/.htpasswd |  | 16 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.7.112/server-status |  | 16215 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  