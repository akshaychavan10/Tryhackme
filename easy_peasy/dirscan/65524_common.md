# FFUF Report

  Command line : `ffuf -u http://10.10.202.55:65524/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/65524_common.md`
  Time: 2021-12-11T15:08:17-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.202.55:65524/ |  | 1 | 200 | 10818 | 3441 | 371 | text/html |  |
  | .hta | http://10.10.202.55:65524/.hta |  | 11 | 403 | 280 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.202.55:65524/.htpasswd |  | 13 | 403 | 280 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.202.55:65524/.htaccess |  | 12 | 403 | 280 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.202.55:65524/index.html |  | 2020 | 200 | 10818 | 3441 | 371 | text/html |  |
  | robots.txt | http://10.10.202.55:65524/robots.txt |  | 3436 | 200 | 153 | 13 | 7 | text/plain |  |
  | server-status | http://10.10.202.55:65524/server-status |  | 3588 | 403 | 280 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  