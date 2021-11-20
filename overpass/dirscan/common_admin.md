# FFUF Report

  Command line : `ffuf -u http://10.10.89.33/admin/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common_admin.md`
  Time: 2021-11-01T03:35:37-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.89.33/admin/ |  | 1 | 200 | 1525 | 269 | 40 | text/html; charset=utf-8 |  |
  | index.html | http://10.10.89.33/admin/index.html | ./ | 2020 | 301 | 0 | 1 | 1 |  |  |
  