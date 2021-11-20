# FFUF Report

  Command line : `ffuf -u http://10.10.74.155/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-11-18T03:58:58-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.74.155/ |  | 1 | 200 | 803 | 166 | 30 | text/html; charset=utf-8 |  |
  | favicon.ico | http://10.10.74.155/favicon.ico |  | 1575 | 200 | 21665 | 104 | 91 | image/png |  |
  | index.html | http://10.10.74.155/index.html | ./ | 2020 | 301 | 0 | 1 | 1 |  |  |
  | upload | http://10.10.74.155/upload | upload/ | 4207 | 301 | 0 | 1 | 1 |  |  |
  