# FFUF Report

  Command line : `ffuf -u http://10.10.202.55:65524/n0th1ng3ls3m4tt3r/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/nothingmatter.md`
  Time: 2021-12-11T15:28:32-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.202.55:65524/n0th1ng3ls3m4tt3r/ |  | 1 | 200 | 384 | 7 | 20 | text/html |  |
  | .htaccess | http://10.10.202.55:65524/n0th1ng3ls3m4tt3r/.htaccess |  | 12 | 403 | 280 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.202.55:65524/n0th1ng3ls3m4tt3r/.hta |  | 11 | 403 | 280 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.202.55:65524/n0th1ng3ls3m4tt3r/.htpasswd |  | 13 | 403 | 280 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.202.55:65524/n0th1ng3ls3m4tt3r/index.html |  | 2020 | 200 | 384 | 7 | 20 | text/html |  |
  