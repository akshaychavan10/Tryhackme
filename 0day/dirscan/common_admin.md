# FFUF Report

  Command line : `ffuf -u http://10.10.151.146/admin/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common_admin.md`
  Time: 2021-12-22T09:55:00-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | index.html | http://10.10.151.146/admin/index.html |  | 2020 | 200 | 0 | 1 | 1 | text/html |  |
  