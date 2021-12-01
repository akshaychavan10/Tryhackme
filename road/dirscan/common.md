# FFUF Report

  Command line : `ffuf -u http://10.10.121.226/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-11-27T00:46:10-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.121.226/ |  | 1 | 200 | 19607 | 2975 | 540 | text/html |  |
  | assets | http://10.10.121.226/assets | http://10.10.121.226/assets/ | 499 | 301 | 315 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.121.226/index.html |  | 2020 | 200 | 19607 | 2975 | 540 | text/html |  |
  | phpMyAdmin | http://10.10.121.226/phpMyAdmin | http://10.10.121.226/phpMyAdmin/ | 2955 | 301 | 319 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.121.226/server-status |  | 3588 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | v2 | http://10.10.121.226/v2 | http://10.10.121.226/v2/ | 4261 | 301 | 311 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  