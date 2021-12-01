# FFUF Report

  Command line : `ffuf -u http://team.thm/scripts/FUZZ -w /usr/share/wordlists/dirb/big.txt -of md -o dirscan/scripts_big.md`
  Time: 2021-11-30T03:00:50-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://team.thm/scripts/.htpasswd |  | 16 | 403 | 273 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://team.thm/scripts/.htaccess |  | 15 | 403 | 273 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  