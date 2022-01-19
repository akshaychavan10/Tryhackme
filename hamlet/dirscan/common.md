# FFUF Report

  Command line : `ffuf -u http://10.10.191.7/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2022-01-15T07:53:00-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.191.7/ |  | 1 | 200 | 1011 | 244 | 39 | text/html |  |
  | index.html | http://10.10.191.7/index.html |  | 2020 | 200 | 1011 | 244 | 39 | text/html |  |
  | robots.txt | http://10.10.191.7/robots.txt |  | 3436 | 200 | 64 | 3 | 4 | text/plain |  |
  