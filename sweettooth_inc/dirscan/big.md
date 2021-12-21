# FFUF Report

  Command line : `ffuf -u http://10.10.158.16:8086/FUZZ -w /usr/share/wordlists/dirb/big.txt -of md -o dirscan/big.md`
  Time: 2021-12-15T10:06:44-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | ping | http://10.10.158.16:8086/ping |  | 13910 | 204 | 0 | 1 | 1 | application/json |  |
  | query | http://10.10.158.16:8086/query |  | 14836 | 401 | 55 | 5 | 2 | application/json |  |
  | status | http://10.10.158.16:8086/status |  | 17198 | 204 | 0 | 1 | 1 | application/json |  |
  | write | http://10.10.158.16:8086/write |  | 20012 | 405 | 19 | 3 | 2 | text/plain; charset=utf-8 |  |
  