# FFUF Report

  Command line : `ffuf -u http://10.10.112.62:8081/FUZZ -w /usr/share/wordlists/dirb/big.txt -of md -o dirscan/big.md`
  Time: 2021-11-21T02:06:52-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | auth | http://10.10.112.62:8081/auth |  | 2838 | 200 | 39 | 8 | 1 | text/html; charset=utf-8 |  |
  