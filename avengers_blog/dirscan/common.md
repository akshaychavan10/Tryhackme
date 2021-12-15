# FFUF Report

  Command line : `ffuf -u http://10.10.38.2/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-12-09T10:37:41-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.38.2/ |  | 1 | 200 | 7292 | 2394 | 192 | text/html; charset=utf-8 |  |
  | assets | http://10.10.38.2/assets | /assets/ | 499 | 301 | 179 | 7 | 11 | text/html; charset=UTF-8 |  |
  | css | http://10.10.38.2/css | /css/ | 1114 | 301 | 173 | 7 | 11 | text/html; charset=UTF-8 |  |
  | home | http://10.10.38.2/home | / | 1908 | 302 | 23 | 4 | 1 | text/plain; charset=utf-8 |  |
  | Home | http://10.10.38.2/Home | / | 1909 | 302 | 23 | 4 | 1 | text/plain; charset=utf-8 |  |
  | img | http://10.10.38.2/img | /img/ | 1998 | 301 | 173 | 7 | 11 | text/html; charset=UTF-8 |  |
  | js | http://10.10.38.2/js | /js/ | 2179 | 301 | 171 | 7 | 11 | text/html; charset=UTF-8 |  |
  | logout | http://10.10.38.2/logout | /portal | 2362 | 302 | 29 | 4 | 1 | text/plain; charset=utf-8 |  |
  | portal | http://10.10.38.2/portal |  | 3043 | 200 | 1409 | 162 | 31 | text/html; charset=utf-8 |  |
  