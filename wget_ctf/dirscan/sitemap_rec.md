# FFUF Report

  Command line : `ffuf -u http://10.10.98.94/sitemap/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/sitemap_rec.md`
  Time: 2021-12-03T15:47:08-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccess | http://10.10.98.94/sitemap/.htaccess |  | 12 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.98.94/sitemap/.htpasswd |  | 13 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.98.94/sitemap/ |  | 1 | 200 | 21080 | 1305 | 517 | text/html |  |
  | .hta | http://10.10.98.94/sitemap/.hta |  | 11 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .ssh | http://10.10.98.94/sitemap/.ssh | http://10.10.98.94/sitemap/.ssh/ | 22 | 301 | 317 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | css | http://10.10.98.94/sitemap/css | http://10.10.98.94/sitemap/css/ | 1114 | 301 | 316 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | fonts | http://10.10.98.94/sitemap/fonts | http://10.10.98.94/sitemap/fonts/ | 1648 | 301 | 318 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | images | http://10.10.98.94/sitemap/images | http://10.10.98.94/sitemap/images/ | 1991 | 301 | 319 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.98.94/sitemap/index.html |  | 2020 | 200 | 21080 | 1305 | 517 | text/html |  |
  | js | http://10.10.98.94/sitemap/js | http://10.10.98.94/sitemap/js/ | 2179 | 301 | 315 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  