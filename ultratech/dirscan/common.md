# FFUF Report

  Command line : `ffuf -u http://10.10.112.62:8081/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-11-21T01:57:32-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.112.62:8081/ |  | 1 | 200 | 20 | 3 | 1 | text/html; charset=utf-8 |  |
  | auth | http://10.10.112.62:8081/auth |  | 515 | 200 | 39 | 8 | 1 | text/html; charset=utf-8 |  |
  