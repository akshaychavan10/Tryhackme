# FFUF Report

  Command line : `ffuf -u http://10.10.22.243:8080/administrator/FUZZ.bak -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/8080_common_administrator_bak.md -fc 401`
  Time: 2021-12-17T08:21:10-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.22.243:8080/administrator/.hta.bak |  | 11 | 403 | 279 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.22.243:8080/administrator/.htaccess.bak |  | 12 | 403 | 279 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.22.243:8080/administrator/.htpasswd.bak |  | 13 | 403 | 279 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  