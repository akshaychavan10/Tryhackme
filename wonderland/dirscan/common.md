# FFUF Report

  Command line : `ffuf -u http://10.10.162.171/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -fc 404 -o dirscan/common.md`
  Time: 2021-10-07T04:47:54-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.162.171/ |  | 1 | 200 | 402 | 55 | 10 | text/html; charset=utf-8 |  |
  | img | http://10.10.162.171/img | img/ | 1998 | 301 | 0 | 1 | 1 |  |  |
  | index.html | http://10.10.162.171/index.html | ./ | 2020 | 301 | 0 | 1 | 1 |  |  |
  | r | http://10.10.162.171/r | r/ | 3256 | 301 | 0 | 1 | 1 |  |  |
  