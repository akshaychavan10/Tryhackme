# FFUF Report

  Command line : `ffuf -u http://10.10.230.26:8080/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2022-01-10T00:57:31-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.230.26:8080/ |  | 1 | 200 | 1453 | 174 | 24 | text/html; charset=UTF-8 |  |
  | debug | http://10.10.230.26:8080/debug | / | 1196 | 302 | 0 | 1 | 1 |  |  |
  