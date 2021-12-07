# FFUF Report

  Command line : `ffuf -u http://10.10.86.117:8080/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/8080_common.md`
  Time: 2021-12-03T14:29:35-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.86.117:8080/ |  | 1 | 200 | 11196 | 4210 | 200 | text/html;charset=UTF-8 |  |
  | docs | http://10.10.86.117:8080/docs | /docs/ | 1319 | 302 | 0 | 1 | 1 |  |  |
  | examples | http://10.10.86.117:8080/examples | /examples/ | 1519 | 302 | 0 | 1 | 1 |  |  |
  | favicon.ico | http://10.10.86.117:8080/favicon.ico |  | 1575 | 200 | 21630 | 19 | 22 | image/x-icon |  |
  | host-manager | http://10.10.86.117:8080/host-manager | /host-manager/ | 1920 | 302 | 0 | 1 | 1 |  |  |
  | manager | http://10.10.86.117:8080/manager | /manager/ | 2436 | 302 | 0 | 1 | 1 |  |  |
  