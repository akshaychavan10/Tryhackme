# FFUF Report

  Command line : `ffuf -u http://store.cybercrafted.thm/FUZZ.php -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/store_common_php.md`
  Time: 2021-11-22T05:46:44-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccess | http://store.cybercrafted.thm/.htaccess.php |  | 12 | 403 | 287 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://store.cybercrafted.thm/.php |  | 1 | 403 | 287 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://store.cybercrafted.thm/.htpasswd.php |  | 13 | 403 | 287 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://store.cybercrafted.thm/.hta.php |  | 11 | 403 | 287 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | search | http://store.cybercrafted.thm/search.php |  | 3525 | 200 | 838 | 162 | 28 | text/html; charset=UTF-8 |  |
  