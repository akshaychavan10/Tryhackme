# FFUF Report

  Command line : `ffuf -u http://10.10.62.135/uploads/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/uplods.md -fc 404`
  Time: 2021-10-04T03:53:05-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://10.10.62.135/uploads/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.62.135/uploads/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.62.135/uploads/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.62.135/uploads/ |  | 1 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  