# FFUF Report

  Command line : `ffuf -u http://10.10.191.7:8000/db/FUZZ.db -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common_8000_db.md`
  Time: 2022-01-15T08:09:51-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.191.7:8000/db/.hta.db |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.191.7:8000/db/.htpasswd.db |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.191.7:8000/db/.htaccess.db |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  