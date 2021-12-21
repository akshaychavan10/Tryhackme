# FFUF Report

  Command line : `ffuf -u http://10.10.22.243:8080/administrator/FUZZ.txt -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/8080_common_administrator_txt.md -fc 401`
  Time: 2021-12-17T08:21:49-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccess | http://10.10.22.243:8080/administrator/.htaccess.txt |  | 12 | 403 | 279 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.22.243:8080/administrator/.hta.txt |  | 11 | 403 | 279 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.22.243:8080/administrator/.htpasswd.txt |  | 13 | 403 | 279 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  