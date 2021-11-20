# FFUF Report

  Command line : `ffuf -u http://10.10.23.249/FUZZ.gif -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/pngfuzzing.md -fc 404`
  Time: 2021-10-15T15:44:24-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.23.249/.hta.gif |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.23.249/.htpasswd.gif |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.23.249/.htaccess.gif |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  