# FFUF Report

  Command line : `ffuf -u http://10.10.89.33/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-11-01T03:18:13-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.89.33/ |  | 1 | 200 | 2431 | 582 | 53 | text/html; charset=utf-8 |  |
  | aboutus | http://10.10.89.33/aboutus | aboutus/ | 226 | 301 | 0 | 1 | 1 |  |  |
  | admin | http://10.10.89.33/admin | /admin/ | 286 | 301 | 42 | 3 | 3 | text/html; charset=utf-8 |  |
  | css | http://10.10.89.33/css | css/ | 1114 | 301 | 0 | 1 | 1 |  |  |
  | downloads | http://10.10.89.33/downloads | downloads/ | 1344 | 301 | 0 | 1 | 1 |  |  |
  | img | http://10.10.89.33/img | img/ | 1998 | 301 | 0 | 1 | 1 |  |  |
  | index.html | http://10.10.89.33/index.html | ./ | 2020 | 301 | 0 | 1 | 1 |  |  |
  