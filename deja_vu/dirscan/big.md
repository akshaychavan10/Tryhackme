# FFUF Report

  Command line : `ffuf -u http://10.10.74.155/FUZZ -w /usr/share/wordlists/dirb/big.txt -of md -o dirscan/big.md`
  Time: 2021-11-18T04:02:38-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | favicon.ico | http://10.10.74.155/favicon.ico |  | 7427 | 200 | 21665 | 104 | 91 | image/png |  |
  | upload | http://10.10.74.155/upload | upload/ | 18744 | 301 | 0 | 1 | 1 |  |  |
  