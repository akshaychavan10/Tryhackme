# FFUF Report

  Command line : `ffuf -u http://team.thm/scripts/FUZZ.php -w /usr/share/wordlists/dirb/big.txt -of md -o dirscan/scripts_big_php.md`
  Time: 2021-11-30T02:54:18-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccess | http://team.thm/scripts/.htaccess.php |  | 15 | 403 | 273 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://team.thm/scripts/.htpasswd.php |  | 16 | 403 | 273 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  