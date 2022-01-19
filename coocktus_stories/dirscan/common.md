# FFUF Report

  Command line : `ffuf -u http://10.10.65.187:8080/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2022-01-19T01:20:42-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.65.187:8080/ |  | 1 | 200 | 603 | 132 | 30 | text/html; charset=utf-8 |  |
  | cat | http://10.10.65.187:8080/cat | http://10.10.65.187:8080/login | 777 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  | login | http://10.10.65.187:8080/login |  | 2347 | 200 | 556 | 25 | 18 | text/html; charset=utf-8 |  |
  