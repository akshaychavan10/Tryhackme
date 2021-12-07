# FFUF Report

  Command line : `ffuf -u http://10.10.213.146/admin/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/admin_rec.md`
  Time: 2021-12-03T16:56:31-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.213.146/admin/ |  | 1 | 200 | 671 | 159 | 29 | text/html; charset=UTF-8 |  |
  | .htpasswd | http://10.10.213.146/admin/.htpasswd |  | 13 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.213.146/admin/.hta |  | 11 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.213.146/admin/.htaccess |  | 12 | 403 | 278 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.php | http://10.10.213.146/admin/index.php |  | 2021 | 200 | 671 | 159 | 29 | text/html; charset=UTF-8 |  |
  | panel | http://10.10.213.146/admin/panel | http://10.10.213.146/admin/panel/ | 2850 | 301 | 320 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  