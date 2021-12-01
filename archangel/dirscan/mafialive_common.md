# FFUF Report

  Command line : `ffuf -u http://mafialive.thm/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/mafialive_common.md`
  Time: 2021-11-30T10:13:39-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://mafialive.thm/.hta |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://mafialive.thm/.htpasswd |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://mafialive.thm/.htaccess |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://mafialive.thm/ |  | 1 | 200 | 59 | 2 | 4 | text/html |  |
  | index.html | http://mafialive.thm/index.html |  | 2020 | 200 | 59 | 2 | 4 | text/html |  |
  | robots.txt | http://mafialive.thm/robots.txt |  | 3436 | 200 | 34 | 3 | 3 | text/plain |  |
  | server-status | http://mafialive.thm/server-status |  | 3588 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  