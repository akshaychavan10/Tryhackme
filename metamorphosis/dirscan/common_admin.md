# FFUF Report

  Command line : `ffuf -u http://10.10.94.172/admin/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common_admin.md`
  Time: 2021-12-27T04:09:16-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.94.172/admin/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.94.172/admin/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.94.172/admin/ |  | 1 | 200 | 132 | 15 | 1 | text/html; charset=UTF-8 |  |
  | .htaccess | http://10.10.94.172/admin/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.php | http://10.10.94.172/admin/index.php |  | 2021 | 200 | 132 | 15 | 1 | text/html; charset=UTF-8 |  |
  