# FFUF Report

  Command line : `ffuf -u http://10.10.142.232/FUZZ.html -w /usr/share/wordlists/dirb/big.txt -of md -o dirscan/big_html.md`
  Time: 2022-01-04T04:47:30-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://10.10.142.232/.htpasswd.html |  | 16 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.142.232/.htaccess.html |  | 15 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | login | http://10.10.142.232/login.html |  | 11054 | 200 | 2479 | 633 | 70 | text/html |  |
  