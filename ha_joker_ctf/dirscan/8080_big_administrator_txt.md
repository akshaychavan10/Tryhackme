# FFUF Report

  Command line : `ffuf -u http://10.10.22.243:8080/administrator/FUZZ.txt -w /usr/share/wordlists/dirb/big.txt -of md -o dirscan/8080_big_administrator_txt.md -fc 401`
  Time: 2021-12-17T08:28:24-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://10.10.22.243:8080/administrator/.htpasswd.txt |  | 16 | 403 | 279 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.22.243:8080/administrator/.htaccess.txt |  | 15 | 403 | 279 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  