# FFUF Report

  Command line : `ffuf -u http://10.10.23.249/FUZZ -w /usr/share/wordlists/dirb/big.txt -of md -o dirscan/big.md -fc 404`
  Time: 2021-10-15T15:30:49-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://10.10.23.249/.htpasswd |  | 16 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.23.249/.htaccess |  | 15 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.23.249/server-status |  | 16215 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  