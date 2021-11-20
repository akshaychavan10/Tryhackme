# FFUF Report

  Command line : `ffuf -u http://10.10.135.161/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-10-28T02:29:27-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.135.161/ |  | 1 | 200 | 681 | 93 | 19 | text/html; charset=utf-8 |  |
  | index.html | http://10.10.135.161/index.html | ./ | 2020 | 301 | 0 | 1 | 1 |  |  |
  | login | http://10.10.135.161/login | login/ | 2347 | 301 | 0 | 1 | 1 |  |  |
  | notes | http://10.10.135.161/notes | notes/ | 2695 | 301 | 0 | 1 | 1 |  |  |
  