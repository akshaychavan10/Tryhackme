# FFUF Report

  Command line : `ffuf -u http://10.10.28.14:12340/rms/admin/FUZZ.php -w /usr/share/wordlists/dirb/common.txt -of md -o rms_admin_php_common.md`
  Time: 2021-10-25T10:10:43-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.28.14:12340/rms/admin/.hta.php |  | 11 | 403 | 220 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.28.14:12340/rms/admin/.htaccess.php |  | 12 | 403 | 225 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.28.14:12340/rms/admin/.htpasswd.php |  | 13 | 403 | 225 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | accounts | http://10.10.28.14:12340/rms/admin/accounts.php | access-denied.php | 252 | 302 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | auth | http://10.10.28.14:12340/rms/admin/auth.php | access-denied.php | 515 | 302 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | categories | http://10.10.28.14:12340/rms/admin/categories.php | access-denied.php | 786 | 302 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | footer | http://10.10.28.14:12340/rms/admin/footer.php |  | 1652 | 200 | 118 | 10 | 3 | text/html; charset=UTF-8 |  |
  | index | http://10.10.28.14:12340/rms/admin/index.php | access-denied.php | 2017 | 302 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | logout | http://10.10.28.14:12340/rms/admin/logout.php |  | 2362 | 200 | 748 | 42 | 22 | text/html; charset=UTF-8 |  |
  | messages | http://10.10.28.14:12340/rms/admin/messages.php | access-denied.php | 2505 | 302 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | options | http://10.10.28.14:12340/rms/admin/options.php | access-denied.php | 2777 | 302 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | orders | http://10.10.28.14:12340/rms/admin/orders.php | access-denied.php | 2792 | 302 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | profile | http://10.10.28.14:12340/rms/admin/profile.php | access-denied.php | 3160 | 302 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | reservations | http://10.10.28.14:12340/rms/admin/reservations.php | access-denied.php | 3396 | 302 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | specials | http://10.10.28.14:12340/rms/admin/specials.php | access-denied.php | 3773 | 302 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  