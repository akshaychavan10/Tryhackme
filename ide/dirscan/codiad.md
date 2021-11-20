# FFUF Report

  Command line : `ffuf -u http://10.10.23.249/codiad/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/codiad.md -fc 404`
  Time: 2021-10-15T16:22:56-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccess | http://10.10.23.249/codiad/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.23.249/codiad/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.23.249/codiad/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.23.249/codiad/ |  | 1 | 200 | 5239 | 1739 | 87 | text/html; charset=UTF-8 |  |
  | components | http://10.10.23.249/codiad/components | http://10.10.23.249/codiad/components/ | 978 | 301 | 324 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | data | http://10.10.23.249/codiad/data | http://10.10.23.249/codiad/data/ | 1158 | 301 | 318 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | favicon.ico | http://10.10.23.249/codiad/favicon.ico |  | 1575 | 200 | 1150 | 4 | 1 | image/vnd.microsoft.icon |  |
  | index.php | http://10.10.23.249/codiad/index.php |  | 2021 | 200 | 5239 | 1739 | 87 | text/html; charset=UTF-8 |  |
  | js | http://10.10.23.249/codiad/js | http://10.10.23.249/codiad/js/ | 2179 | 301 | 316 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | languages | http://10.10.23.249/codiad/languages | http://10.10.23.249/codiad/languages/ | 2237 | 301 | 323 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | lib | http://10.10.23.249/codiad/lib | http://10.10.23.249/codiad/lib/ | 2274 | 301 | 317 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | plugins | http://10.10.23.249/codiad/plugins | http://10.10.23.249/codiad/plugins/ | 3003 | 301 | 321 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | themes | http://10.10.23.249/codiad/themes | http://10.10.23.249/codiad/themes/ | 4037 | 301 | 320 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  