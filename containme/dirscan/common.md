# FFUF Report

  Command line : `ffuf -u http://10.10.66.164/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-11-13T00:54:38-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.66.164/ |  | 1 | 200 | 10918 | 3499 | 376 | text/html |  |
  | .htpasswd | http://10.10.66.164/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.66.164/index.html |  | 2020 | 200 | 10918 | 3499 | 376 | text/html |  |
  