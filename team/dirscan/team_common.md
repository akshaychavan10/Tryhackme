# FFUF Report

  Command line : `ffuf -u http://team.thm/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/team_common.md`
  Time: 2021-11-30T02:43:15-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://team.thm/ |  | 1 | 200 | 2966 | 140 | 90 | text/html |  |
  | .htpasswd | http://team.thm/.htpasswd |  | 13 | 403 | 273 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://team.thm/.hta |  | 11 | 403 | 273 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://team.thm/.htaccess |  | 12 | 403 | 273 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | assets | http://team.thm/assets | http://team.thm/assets/ | 499 | 301 | 305 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | images | http://team.thm/images | http://team.thm/images/ | 1991 | 301 | 305 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://team.thm/index.html |  | 2020 | 200 | 2966 | 140 | 90 | text/html |  |
  | robots.txt | http://team.thm/robots.txt |  | 3436 | 200 | 5 | 1 | 2 | text/plain |  |
  | scripts | http://team.thm/scripts | http://team.thm/scripts/ | 3520 | 301 | 306 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://team.thm/server-status |  | 3588 | 403 | 273 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  