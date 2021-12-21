# FFUF Report

  Command line : `ffuf -u http://10.10.158.16:8086/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common_8086.md`
  Time: 2021-12-15T09:25:19-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | ping | http://10.10.158.16:8086/ping |  | 2973 | 204 | 0 | 1 | 1 | application/json |  |
  | query | http://10.10.158.16:8086/query |  | 3246 | 401 | 55 | 5 | 2 | application/json |  |
  | status | http://10.10.158.16:8086/status |  | 3850 | 204 | 0 | 1 | 1 | application/json |  |
  