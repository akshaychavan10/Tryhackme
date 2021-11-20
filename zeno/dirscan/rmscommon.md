# FFUF Report

  Command line : `ffuf -u http://10.10.28.14:12340/rms/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o rmscommon.md`
  Time: 2021-10-25T10:04:51-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.28.14:12340/rms/ |  | 1 | 200 | 5982 | 1573 | 119 | text/html; charset=UTF-8 |  |
  | .htpasswd | http://10.10.28.14:12340/rms/.htpasswd |  | 13 | 403 | 215 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | admin | http://10.10.28.14:12340/rms/admin | http://10.10.28.14:12340/rms/admin/ | 286 | 301 | 243 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.28.14:12340/rms/.hta |  | 11 | 403 | 210 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.28.14:12340/rms/.htaccess |  | 12 | 403 | 215 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | css | http://10.10.28.14:12340/rms/css | http://10.10.28.14:12340/rms/css/ | 1114 | 301 | 241 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | fonts | http://10.10.28.14:12340/rms/fonts | http://10.10.28.14:12340/rms/fonts/ | 1648 | 301 | 243 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | images | http://10.10.28.14:12340/rms/images | http://10.10.28.14:12340/rms/images/ | 1991 | 301 | 244 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | index.php | http://10.10.28.14:12340/rms/index.php |  | 2021 | 200 | 5982 | 1573 | 119 | text/html; charset=UTF-8 |  |
  | stylesheets | http://10.10.28.14:12340/rms/stylesheets | http://10.10.28.14:12340/rms/stylesheets/ | 3880 | 301 | 249 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | swf | http://10.10.28.14:12340/rms/swf | http://10.10.28.14:12340/rms/swf/ | 3927 | 301 | 241 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | validation | http://10.10.28.14:12340/rms/validation | http://10.10.28.14:12340/rms/validation/ | 4265 | 301 | 248 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  