# FFUF Report

  Command line : `ffuf -u http://10.10.12.152/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/commmon.md`
  Time: 2021-12-07T08:18:02-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.12.152/ |  | 1 | 200 | 226 | 18 | 12 | text/html |  |
  | index.html | http://10.10.12.152/index.html |  | 2020 | 200 | 226 | 18 | 12 | text/html |  |
  | javascript | http://10.10.12.152/javascript | http://10.10.12.152/javascript/ | 2145 | 301 | 0 | 1 | 1 |  |  |
  