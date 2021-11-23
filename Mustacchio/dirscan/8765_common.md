# FFUF Report

  Command line : `ffuf -u http://10.10.41.73:8765/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/8765_common.md`
  Time: 2021-11-22T08:49:45-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.41.73:8765/ |  | 1 | 200 | 1363 | 164 | 24 | text/html; charset=UTF-8 |  |
  | .htaccess | http://10.10.41.73:8765/.htaccess |  | 12 | 403 | 178 | 5 | 8 | text/html |  |
  | .htpasswd | http://10.10.41.73:8765/.htpasswd |  | 13 | 403 | 178 | 5 | 8 | text/html |  |
  | .hta | http://10.10.41.73:8765/.hta |  | 11 | 403 | 178 | 5 | 8 | text/html |  |
  | assets | http://10.10.41.73:8765/assets | http://10.10.41.73:8765/assets/ | 499 | 301 | 194 | 7 | 8 | text/html |  |
  | auth | http://10.10.41.73:8765/auth | http://10.10.41.73:8765/auth/ | 515 | 301 | 194 | 7 | 8 | text/html |  |
  | index.php | http://10.10.41.73:8765/index.php |  | 2021 | 200 | 1363 | 164 | 24 | text/html; charset=UTF-8 |  |
  