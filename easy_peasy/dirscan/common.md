# FFUF Report

  Command line : `ffuf -u http://10.10.202.55/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-12-11T14:42:03-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.202.55/ |  | 1 | 200 | 612 | 79 | 26 | text/html |  |
  | hidden | http://10.10.202.55/hidden | http://10.10.202.55/hidden/ | 1893 | 301 | 169 | 5 | 8 | text/html |  |
  | index.html | http://10.10.202.55/index.html |  | 2020 | 200 | 612 | 79 | 26 | text/html |  |
  | robots.txt | http://10.10.202.55/robots.txt |  | 3436 | 200 | 43 | 3 | 4 | text/plain |  |
  