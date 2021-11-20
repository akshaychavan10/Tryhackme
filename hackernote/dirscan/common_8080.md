# FFUF Report

  Command line : `ffuf -u http://10.10.135.161:8080/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common_8080.md`
  Time: 2021-10-28T02:30:13-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.135.161:8080/ |  | 1 | 200 | 681 | 93 | 19 | text/html; charset=utf-8 |  |
  | index.html | http://10.10.135.161:8080/index.html | ./ | 2020 | 301 | 0 | 1 | 1 |  |  |
  | login | http://10.10.135.161:8080/login | login/ | 2347 | 301 | 0 | 1 | 1 |  |  |
  | notes | http://10.10.135.161:8080/notes | notes/ | 2695 | 301 | 0 | 1 | 1 |  |  |
  