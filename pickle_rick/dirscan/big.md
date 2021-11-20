# FFUF Report

  Command line : `ffuf -u http://10.10.44.112/FUZZ -w /usr/share/wordlists/dirb/big.txt -of md -o dirscan/big.md -fc 404`
  Time: 2021-10-07T08:56:26-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://10.10.44.112/.htpasswd |  | 16 | 403 | 296 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.44.112/.htaccess |  | 15 | 403 | 296 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | assets | http://10.10.44.112/assets | http://10.10.44.112/assets/ | 2716 | 301 | 313 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | robots.txt | http://10.10.44.112/robots.txt |  | 15551 | 200 | 17 | 1 | 2 | text/plain |  |
  | server-status | http://10.10.44.112/server-status |  | 16215 | 403 | 300 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  