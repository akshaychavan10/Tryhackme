# FFUF Report

  Command line : `ffuf -u http://10.10.112.62:31331/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/apache_common.md`
  Time: 2021-11-21T02:07:43-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.112.62:31331/.hta |  | 11 | 403 | 294 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.112.62:31331/.htpasswd |  | 13 | 403 | 299 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.112.62:31331/.htaccess |  | 12 | 403 | 299 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.112.62:31331/ |  | 1 | 200 | 6092 | 393 | 140 | text/html |  |
  | css | http://10.10.112.62:31331/css | http://10.10.112.62:31331/css/ | 1114 | 301 | 319 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | favicon.ico | http://10.10.112.62:31331/favicon.ico |  | 1575 | 200 | 15086 | 11 | 7 | image/vnd.microsoft.icon |  |
  | images | http://10.10.112.62:31331/images | http://10.10.112.62:31331/images/ | 1991 | 301 | 322 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.112.62:31331/index.html |  | 2020 | 200 | 6092 | 393 | 140 | text/html |  |
  | javascript | http://10.10.112.62:31331/javascript | http://10.10.112.62:31331/javascript/ | 2145 | 301 | 326 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | js | http://10.10.112.62:31331/js | http://10.10.112.62:31331/js/ | 2179 | 301 | 318 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | robots.txt | http://10.10.112.62:31331/robots.txt |  | 3436 | 200 | 53 | 4 | 6 | text/plain |  |
  | server-status | http://10.10.112.62:31331/server-status |  | 3588 | 403 | 303 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  