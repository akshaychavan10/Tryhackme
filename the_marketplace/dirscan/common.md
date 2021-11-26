# FFUF Report

  Command line : `ffuf -u http://10.10.93.134/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-11-25T00:25:24-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.93.134/.hta |  | 11 | 403 | 153 | 3 | 8 | text/html |  |
  | .htpasswd | http://10.10.93.134/.htpasswd |  | 13 | 403 | 153 | 3 | 8 | text/html |  |
  | .htaccess | http://10.10.93.134/.htaccess |  | 12 | 403 | 153 | 3 | 8 | text/html |  |
  |  | http://10.10.93.134/ |  | 1 | 200 | 779 | 176 | 36 | text/html; charset=utf-8 |  |
  | admin | http://10.10.93.134/admin |  | 286 | 403 | 392 | 75 | 22 | text/html; charset=utf-8 |  |
  | Admin | http://10.10.93.134/Admin |  | 287 | 403 | 392 | 75 | 22 | text/html; charset=utf-8 |  |
  | ADMIN | http://10.10.93.134/ADMIN |  | 288 | 403 | 392 | 75 | 22 | text/html; charset=utf-8 |  |
  | images | http://10.10.93.134/images | /images/ | 1991 | 301 | 179 | 7 | 11 | text/html; charset=UTF-8 |  |
  | login | http://10.10.93.134/login |  | 2347 | 200 | 857 | 200 | 36 | text/html; charset=utf-8 |  |
  | Login | http://10.10.93.134/Login |  | 2348 | 200 | 857 | 200 | 36 | text/html; charset=utf-8 |  |
  | messages | http://10.10.93.134/messages | /login | 2505 | 302 | 28 | 4 | 1 | text/plain; charset=utf-8 |  |
  | new | http://10.10.93.134/new | /login | 2662 | 302 | 28 | 4 | 1 | text/plain; charset=utf-8 |  |
  | robots.txt | http://10.10.93.134/robots.txt |  | 3436 | 200 | 31 | 3 | 3 | text/plain; charset=UTF-8 |  |
  | signup | http://10.10.93.134/signup |  | 3677 | 200 | 667 | 159 | 31 | text/html; charset=utf-8 |  |
  | stylesheets | http://10.10.93.134/stylesheets | /stylesheets/ | 3880 | 301 | 189 | 7 | 11 | text/html; charset=UTF-8 |  |
  