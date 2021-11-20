# FFUF Report

  Command line : `ffuf -u http://10.10.28.14:12340/rms/swf/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o rms_swf_common.md`
  Time: 2021-10-25T10:06:22-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.28.14:12340/rms/swf/ |  | 1 | 403 | 210 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.28.14:12340/rms/swf/.htaccess |  | 12 | 403 | 219 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.28.14:12340/rms/swf/.htpasswd |  | 13 | 403 | 219 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.28.14:12340/rms/swf/.hta |  | 11 | 403 | 214 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | swfobject.js | http://10.10.28.14:12340/rms/swf/swfobject.js |  | 3928 | 200 | 8868 | 180 | 5 | application/javascript |  |
  