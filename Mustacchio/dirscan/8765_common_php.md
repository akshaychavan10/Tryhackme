# FFUF Report

  Command line : `ffuf -u http://10.10.41.73:8765/FUZZ.php -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/8765_common_php.md`
  Time: 2021-11-22T08:51:09-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | home | http://10.10.41.73:8765/home.php | ../index.php | 1908 | 302 | 1993 | 279 | 46 | text/html; charset=UTF-8 |  |
  | index | http://10.10.41.73:8765/index.php |  | 2017 | 200 | 1363 | 164 | 24 | text/html; charset=UTF-8 |  |
  