# FFUF Report

  Command line : `ffuf -u http://team.thm/scripts/FUZZ.php -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/scripts_common_php.md`
  Time: 2021-11-30T02:44:56-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://team.thm/scripts/.hta.php |  | 11 | 403 | 273 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://team.thm/scripts/.htaccess.php |  | 12 | 403 | 273 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://team.thm/scripts/.php |  | 1 | 403 | 273 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://team.thm/scripts/.htpasswd.php |  | 13 | 403 | 273 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  