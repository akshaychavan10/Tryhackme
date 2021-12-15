# FFUF Report

  Command line : `ffuf -u http://10.10.202.55/hidden/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/hidden_common.md`
  Time: 2021-12-11T14:44:26-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.202.55/hidden/ |  | 1 | 200 | 390 | 47 | 19 | text/html |  |
  | index.html | http://10.10.202.55/hidden/index.html |  | 2020 | 200 | 390 | 47 | 19 | text/html |  |
  | whatever | http://10.10.202.55/hidden/whatever | http://10.10.202.55/hidden/whatever/ | 4437 | 301 | 169 | 5 | 8 | text/html |  |
  