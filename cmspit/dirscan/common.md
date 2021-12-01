# FFUF Report

  Command line : `ffuf -u http://10.10.29.223/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md -fc 302`
  Time: 2021-11-29T11:11:31-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .bash_history | http://10.10.29.223/.bash_history |  | 2 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .cache | http://10.10.29.223/.cache |  | 4 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .config | http://10.10.29.223/.config |  | 5 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .forward | http://10.10.29.223/.forward |  | 8 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .cvs | http://10.10.29.223/.cvs |  | 6 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .cvsignore | http://10.10.29.223/.cvsignore |  | 7 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .git/HEAD | http://10.10.29.223/.git/HEAD |  | 9 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .bashrc | http://10.10.29.223/.bashrc |  | 3 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .history | http://10.10.29.223/.history |  | 10 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .passwd | http://10.10.29.223/.passwd |  | 17 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.29.223/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .listing | http://10.10.29.223/.listing |  | 14 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.29.223/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .perf | http://10.10.29.223/.perf |  | 18 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .listings | http://10.10.29.223/.listings |  | 15 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.29.223/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .svn/entries | http://10.10.29.223/.svn/entries |  | 25 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .ssh | http://10.10.29.223/.ssh |  | 22 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .svn | http://10.10.29.223/.svn |  | 24 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .rhosts | http://10.10.29.223/.rhosts |  | 20 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .subversion | http://10.10.29.223/.subversion |  | 23 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .mysql_history | http://10.10.29.223/.mysql_history |  | 16 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .profile | http://10.10.29.223/.profile |  | 19 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .sh_history | http://10.10.29.223/.sh_history |  | 21 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .swf | http://10.10.29.223/.swf |  | 26 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .web | http://10.10.29.223/.web |  | 27 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | addons | http://10.10.29.223/addons | http://10.10.29.223/addons/ | 274 | 301 | 313 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | assets | http://10.10.29.223/assets | http://10.10.29.223/assets/ | 499 | 301 | 313 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | auth | http://10.10.29.223/auth |  | 515 | 200 | 33 | 5 | 1 | text/html;charset=UTF-8 |  |
  | cp | http://10.10.29.223/cp |  | 1072 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | install | http://10.10.29.223/install | http://10.10.29.223/install/ | 2058 | 301 | 314 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | lib | http://10.10.29.223/lib | http://10.10.29.223/lib/ | 2274 | 301 | 310 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | LICENSE | http://10.10.29.223/LICENSE |  | 2282 | 200 | 1133 | 153 | 22 |  |  |
  | modules | http://10.10.29.223/modules | http://10.10.29.223/modules/ | 2567 | 301 | 314 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://10.10.29.223/server-status |  | 3588 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | storage | http://10.10.29.223/storage | http://10.10.29.223/storage/ | 3855 | 301 | 314 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | Thumbs.db | http://10.10.29.223/Thumbs.db |  | 4051 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | thumbs.db | http://10.10.29.223/thumbs.db |  | 4050 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  