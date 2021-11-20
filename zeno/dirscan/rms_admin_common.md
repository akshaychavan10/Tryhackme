# FFUF Report

  Command line : `ffuf -u http://10.10.28.14:12340/rms/admin/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o rms_admin_common.md`
  Time: 2021-10-25T10:09:56-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.28.14:12340/rms/admin/ | access-denied.php | 1 | 302 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | .hta | http://10.10.28.14:12340/rms/admin/.hta |  | 11 | 403 | 216 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.28.14:12340/rms/admin/.htpasswd |  | 13 | 403 | 221 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.28.14:12340/rms/admin/.htaccess |  | 12 | 403 | 221 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | css | http://10.10.28.14:12340/rms/admin/css | http://10.10.28.14:12340/rms/admin/css/ | 1114 | 301 | 247 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | fonts | http://10.10.28.14:12340/rms/admin/fonts | http://10.10.28.14:12340/rms/admin/fonts/ | 1648 | 301 | 249 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | index.php | http://10.10.28.14:12340/rms/admin/index.php | access-denied.php | 2021 | 302 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | stylesheets | http://10.10.28.14:12340/rms/admin/stylesheets | http://10.10.28.14:12340/rms/admin/stylesheets/ | 3880 | 301 | 255 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | validation | http://10.10.28.14:12340/rms/admin/validation | http://10.10.28.14:12340/rms/admin/validation/ | 4265 | 301 | 254 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  